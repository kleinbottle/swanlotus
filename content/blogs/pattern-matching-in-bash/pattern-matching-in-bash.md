---
title: Pattern Matching and Substitution in `bash`
author: "R (Chandra) Chandrasekhar"
date: "2023-02-28"
modified: "2023-03-01"
summary: "The `bash` shell embodies powerful pattern-matching and substitution capabilities These have been growing steadily since version 2.02, released in 1998. This blog gives practical examples for using these powerful, but somewhat understated features, to achieve common tasks efficiently and tersely."
category: Programming
tags: bash, globs, regular expressions, parameter replacement, pattern matching, substitution
opengraphimage: "bash-pattern.png"
---

## Parsing filenames

A fully qualified filename consists of a `path`, a `basename`, and an `extension`. While not all filenames are encountered in their full glory, it helps to decompose any given filename into its constituent parts to help with housekeeping functions on a machine running `bash`---for example, to facilitate searching, sorting and other file-related functions.

### Extended globbing

[_Globbing_](https://en.wikipedia.org/w/index.php?title=Glob_(programming)&oldid=1133836865) is the unflattering term---an abbreviation for _global_---used to denote an operation to extract files satisfying certain conditions [@glob2023]. It is applicable also to the `bash` command line. For our purposes, it is useful and sometimes mandatory, to set `shopt -s extglob` after the [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)) line.

### A canonical filename

A canonical filename will comprise these components:

#.  a _path_ with the forward slash `/` as the separator between elements denoting the path;
#.  a _filename_ in two parts:
    (a)   comprising a _basename_ which appears immediately after the _last_ `/` character; and
    (a)  a _file extension_ that occurs after the basename immediately after a `.` or period character.

`/my_path/is/quite/long/basename.ext` is a canonical filename where the abovenamed elements are as follows:

#.  path: `/my_path/is/quite/long/`
#.  basename: `basename`
#.  extension: `ext`
#.  filename: `basename.ext`

### Parsing the filename

Our next task is to dissect the canonical filename into its above components using pattern-matching in `bash`:

```bash
#!/bin/bash
#file-parse.sh
shopt -s extglob

fullname="/my_path/is/quite/long/basename.ext"
echo "fullname is ${fullname}"

#
# Extract $path
# Approach from the right until the _first_ `/` is encountered
# and throw away everything from the _right_ end
# up to and including that `/`.
#
path="${fullname%/*}"
echo "path is ${fullname%/*}"

#
# Extract $filename
# Approach from the left until the _last_ `/` character
# is encountered and throw away everything
# from the _left_ end up to and including that `/`.
#
filename="${fullname##*/}"
echo "filename is ${fullname##*/}"

#
# Extract $extension
# Approach from the _left_ until the _last_ `.` character
# is encountered and throw away everything
# from the _left_ end up to and including that last `.`.
#
ext="${fullname##*.}"
echo "extension is ${fullname##*.}"

#
# Extract $basename
# This requires trimming strings from both
# the left and the right of `fullname`
# and requires _two_ steps.
#
# Instead, we use `filename` which is already available,
# and excise the extension.
#
# For this, we approach from the _right_ until we encounter
# the _first_ `.` character and throw away everything
# from the _right_ up to and including that first `.`.
#
basename="${filename%.*}"
echo "basename is ${filename%.*}"
```

### Mnemonics behind the `#` and `%` symbols

The use of the symbols `#` and `%` in the pattern matching expressions might seem arbitrary or whimsical. For a start, they do not conform to the usual delimiters `^` and `$` for the beginning and end of a line. Because we are dealing with strings rather than lines here, those symbols are not used.

One other point to keep in view constantly is to avoid looking at `bash` pattern matching through the lens of [regular expressions](https://www.regular-expressions.info/tutorial.html). There are some similarities, but the two are not identical.

So, [what's the dope](https://www.ldoceonline.com/dictionary/the-dope-on-somebody-something) on `#` and `%`? These two symbols have been chosen for their near universal usage as a prefix and suffix respectively. It is customary to write `#1` for "number one", and `20%` for "twenty percent", where you will notice that the `#` is written as a _prefix_ and the `%` is written as a _suffix_ to the number.

In the `bash` pattern-matching we have encountered so far, we are matching elements in a string, and throwing away the matching portion, using some known delimiter. When we match from the left, we use `#` because it is a prefix. Likewise, when we match from the right, we use `%`, which is a suffix. In both cases, we stop at the first match from whichever direction we are starting the search for the match. The single `#` and `%` therefore denote [lazy matching](https://stackoverflow.com/questions/2301285/what-do-lazy-and-greedy-mean-in-the-context-of-regular-expressions).

The symbol `##` means we deal with the _longest_ substring from the left that matches: a case of [greedy matching](https://www.geeksforgeeks.org/perl-greedy-and-non-greedy-match/). The same applies to `%%` where we stop at the longest matching substring from the right.

If you look carefully, you will see that---apart from the anchor character(s)---we do not care about what we are throwing away. We can therefore denote these "don't care" characters with the `*`, which denotes zero or more characters, whether as a [wildcard](https://en.wikipedia.org/wiki/Wildcard_character) or a glob. What _is_ important to us, though, is the _delimiter_ that anchors the string that we are trimming off.

This delimiting character will be placed to the right of the `*` when used with `#` or `##`, and it will be placed to the left of `*` when used with `%` or `%%`. You will notice that the `/` and `.` characters obey this simple, logical placement rule in the code above. In both cases, the anchoring delimiter is also trimmed off.

To summarize:

#. When we use `#` or `##`, we discard a substring to the left of the anchor; and
#. When we use `%` or `%%`, we discard a substring to the right of the anchor.

## Minefields to beware of

The pattern-matching capabilities in `bash` throw up unexpected results when the assumptions made above are not fulfilled. The structure of the `fullname` is one such. What happens if our assumptions are false?

## Filenames without an extension

There are occasions when, for a variety of reasons, filenames might not have extensions. In such cases, we might rightfully expect the extension to be a null or empty string. But is that what happens in practice? Let us try a simple experiment. You could fire up a bash terminal and run what follows interactively.

~~~bash
#!/bin/bash
shopt -s extglob
fullname=$HOME/myPDFfile
ext="${fullname##*.}"
echo "Extension is $ext."
~~~

Surely, you did not expect the extension to be the fullname of the file. Yet, that is what we get. Though  unexpected, is it yet logically correct?

Imagine you are moving from left to right until you hit the _last_ `.` character. When you do, you discard whatever is to the left of the `.` along with that character itself. If there is no `.` character, you do not stop and you do not discard anything. So, you are left with what you started with. _But, although logical, that is not the intent._

One way to overcome this issue is to test for a period or dot character in the original `fullname` string. If there is no `.` character, we set the extension to the empty string. Otherwise, we set it to what we get by the pattern-matching we have discussed. The corrected routine for the extension should thus run:

~~~bash
#!/bin/bash
# ext.sh
shopt -s extglob

fullname="/path/myPDFfile"

if [[ "$fullname" =~ '.' ]]
then
  echo $?
  ext="${fullname##*.}"
else
  echo $?
  ext=""
fi
echo "Extension is $ext."
~~~

Note that the `=~` sign is a regular expression operator that has been inducted into `bash`. It returns a `0` for `true` and a `1` for `false`, which may sound contrary to expectations, but that is the correct behaviour. This may be seen by appending `echo $?` above to each branch of the `if` conditional.

Mporeover, when match, the left side is double quoted while the right side is either a literal, like `'.'`, or the dot character is escaped as in `\.`. If a plain `.` is used, with no "protection", it will natch any character in accordance with regex rules, and we risk getting the wrong result. It is attention to every small detail that ensures success with `bash` scripts. In the process, you also learn patience. :wink:

### Filenames with multiple dot characters

I have encountered occasions where the `fullname` of a file contains multiple `.` characters. In such cases, we must adopt a convention that the extension is what occurs to the _right of the rightmost_ dot character. We will avoid pathological cases like a filename _ending_ with a `.` character. If theseadditional assumptions hold, our pattern-matching for the extension will return the correct result.

## Filenames without a path

Before attempting to extract a `path`, we must check for the presence of a `/` in the `fullname` string. Otherwise, we risk getting the same errors as with missing extensions. The following script should be self-explanatory by now. Again, note that we either need to make the `/` character a literal, enclosed by single quotes, or we must escape it with a backslash. Note that this time,the forward slash is enclosed by single quotes.

~~~bash
#!/bin/bash
# path.sh
shopt -s extglob

fullname="myPDFfile.pdf"

if [[ "$fullname" =~ '/' ]]
then
  echo $?
  path="${fullname%/*}"
else
  echo $?
  path=""
fi
echo "Path is $path."
~~~

## The generalized filename parser

The revised file for parsing a filename into its components therefore needs to be augmented with these tests if it is to be general and robust. Note also that if no input is given, there can be no meaningful output. The file [`parsefilename.sh`](./parsefilename.sh) embodies the improvements we have discussed and is available for completeness.

We have now concluded the first part of processing a filename, and are ready to proceed to the second part, which is prettifying a filename. Although filenames with spaces, tabs, and and non-alphanumeric characters can be processed in Linux, the natural etiquette in file naming is not to use such characters. But what happens if we are bequeathed with files having such names? Renaming them one-by-one by hand will be laborious and even impractical. How do we automate the renaming of such files with filenames that are Linux-friendly? That is what will occupy us for the rest of this blog.


## Filenames: cacophony to harmony

Spaces Non-alphanumeric characters
Need to preserve _
My preference for -


## Acknowledgements

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./pattern-matching-in-bash.pdf):

::: {.tt .small}
<https://swanlotus.netlify.app/blogs/pattern-matching-in-bash.pdf>
:::



