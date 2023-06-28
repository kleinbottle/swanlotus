---
title: Pattern Matching and Substitution in `bash`
author: "R (Chandra) Chandrasekhar"
date: "2023-02-28"
modified: "2023-03-12"
summary: "The programs, [`sed`](https://www.gnu.org/software/sed/), [`awk`](https://www.grymoire.com/Unix/Awk.html), [`grep`](https://www.gnu.org/software/grep/manual/grep.html), and [`perl`](https://learnbyexample.github.io/learn_perl_oneliners/line-processing.html) have been the traditionally used tools for matching and manipulating lines and strings in Linux. But the [`bash` shell](https://www.gnu.org/software/bash/) [@newham2005; @ryder2018] also embodies powerful pattern-matching and substitution capabilities [@parametersubs; @frazier2019; @gnupattern; @stringops], many of which are relatively unknown and unused. This blog gives practical examples for using these powerful, but somewhat understated features, to achieve common tasks efficiently and tersely, directly from within `bash` itself."
category: Programming
tags: bash, globs, regular expressions, parameter replacement, pattern matching, substitution, substring extraction, string manipulation
opengraphimage: "bash-script.jpg"
---

## The [arcane](https://www.thefreedictionary.com/arcane) powers of the `bash` shell

The programs, [`sed`](https://www.gnu.org/software/sed/), [`awk`](https://www.grymoire.com/Unix/Awk.html), [`grep`](https://www.gnu.org/software/grep/manual/grep.html), and [`perl`](https://learnbyexample.github.io/learn_perl_oneliners/line-processing.html) have been the traditionally used tools for matching and manipulating lines and strings in Linux. But the [`bash` shell](https://www.gnu.org/software/bash/) [@newham2005; @ryder2018] also embodies powerful pattern-matching and substitution capabilities [@parametersubs; @frazier2019; @gnupattern; @stringops], many of which are relatively unknown and unused. This blog gives practical examples for using these powerful, but somewhat understated features, to achieve common tasks efficiently and tersely, directly from within `bash` itself.

### Extended globbing

[_Globbing_](https://en.wikipedia.org/w/index.php?title=Glob_(programming)&oldid=1133836865) is the unflattering term---an abbreviation for _global_---used to denote an operation to extract files satisfying certain conditions [@glob2023; @globbingref; @globhistory]. It is applicable also to the `bash` command line. For our purposes, depending on the sort of matching we perform, it will be sometimes necessary to set `shopt -s extglob` after the [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)) line [@extglob].

## Parsing filenames

A fully qualified filename consists of a `path`, a `basename`, and an `extension`. While not all filenames are encountered in their full glory, it helps to decompose any given filename into its constituent parts to help with housekeeping functions on a machine running `bash`---for example, to facilitate searching, sorting, renamimg, and other file-related functions.

### The canonical filename

A [canonical](https://www.thefreedictionary.com/canonical) filename should comprise these components:

#.  a _path_ with the forward slash `/` as the separator[^1] between elements denoting the path;
#.  a _filename_ in two parts:
    (a)   comprising a _basename_ which appears immediately after the _last_ `/` character; and
    (a)  a _file extension_ that occurs after the basename and immediately after a `.` or period character.

`/my_path/is/quite/long/basename.ext` is a canonical filename---hereafter referred to as `fullname`---where the above-named structural elements are as follows:

#.  path: `/my_path/is/quite/long`
#.  basename: `basename`
#.  extension: `ext`
#.  filename: `basename.ext`

[^1]: The separator in Microsoft Windows is a _backslash_, `\`, but since we are discussing `bash`, running on Linux machines, it is the _forward slash_, `/`, that is our character of interest.

### Parsing the `fullname`

Our next task is to dissect the canonical filename into its above components using pattern-matching in `bash`:

```bash
#!/bin/bash
# file-parse.sh
shopt -s extglob

fullname="/my_path/is/quite/long/basename.ext"
echo "fullname is $fullname"

#
# Extract $path
# Approach from the right until the _first_ `/`
# is encountered and throw away everything
# from the _right_ end up to and including that `/`.
#
path="${fullname%/*}"
echo "path is $path"

#
# Extract $filename
# Approach from the left until the _last_ `/` character
# is encountered and throw away everything
# from the _left_ end up to and including that `/`.
#
filename="${fullname##*/}"
echo "filename is $filename"

#
# Extract $ext
# Approach from the _left_ until the _last_ `.` character
# is encountered and throw away everything
# from the _left_ end up to and including that last `.`.
#
ext="${fullname##*.}"
echo "extension is $ext"

#
# Extract $basename
# This requires trimming strings from both
# the left and the right of $fullname
# and requires _two_ steps if we start with $fullname.
#
# Instead, we use $filename, which is already available,
# and excise the extension to get $basename.
#
# For this, we approach from the _right_ until we encounter
# the _first_ `.` character and throw away everything
# from the _right_ up to and including that first `.`.
#
basename="${filename%.*}"
echo "basename is $basename"
```

### Mnemonics behind the `#` and `%` symbols

The use of the symbols `#` and `%` in the pattern matching expressions might seem arbitrary or whimsical. For a start, they do not conform to the usual delimiters `^` and `$` for the beginning and end of a line or string.

One other point to keep in view constantly is to avoid looking at `bash` pattern matching solely through the lens of [regular expressions](https://www.regular-expressions.info/tutorial.html) [@posixcharclass; @introbashregex; @writeregexp]. There are some similarities, but the two are not identical.

So, [what's the dope](https://www.ldoceonline.com/dictionary/the-dope-on-somebody-something) on `#` and `%`? These two symbols have been chosen for their near universal usage as a prefix and suffix respectively. It is customary to write `#1` for "number one", and `20%` for "twenty percent", where you will notice that the `#` is written as a _prefix_ and the `%` is written as a _suffix_ to the number.

In the `bash` pattern-matching we have encountered so far, we are matching elements in a string, _and throwing away the matching portion_, using some known delimiter. When we match from the left, we use `#` because it is a prefix. Likewise, when we match from the right, we use `%`, which is a suffix. In both cases, we stop at the first match from whichever direction we are starting the search for the match. The single `#` and `%` therefore denote [lazy matching](https://stackoverflow.com/questions/2301285/what-do-lazy-and-greedy-mean-in-the-context-of-regular-expressions).

The symbol `##` means we deal with the _longest_ substring from the left that matches: a case of [greedy matching](https://www.geeksforgeeks.org/perl-greedy-and-non-greedy-match/). The same applies to `%%` where we stop at the longest matching substring from the right.

If you look carefully, you will see that---apart from the anchor character(s)---we do not care about what we are throwing away. We can therefore denote these "don't care" characters with the `*`, which is a [wildcard](https://en.wikipedia.org/wiki/Wildcard_character) that denotes zero or more characters. What _is_ important to us, though, is the _delimiter_ that anchors the string that we are trimming off.

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
echo "Extension is $ext"
~~~

The result is:

```bash
Extension is /home/<redacted>/myPDFfile
```

Surely, you did not expect the extension to be the fullname of the file. Yet, that is what we get. Though  unexpected, is it yet logically correct?

Imagine you are moving from left to right until you hit the _last_ `.` character. When you do, you discard whatever is to the left of the `.` along with that character itself. If there is no `.` character, you do not stop and you do not discard anything. So, you are left with what you started with. _But, although logical, that is not the intent._ The error arises from the unfulfilled assumption that `fullname` contains a dot character,  followed by alphanumeric characters that denote the extension.

One way to overcome this issue is to test for a period or dot character in the original `fullname` string [@periodtest; @dottest; @bashscriptpatmatch]. If there is no `.` character, we set the extension to the empty string. Otherwise, we set it to what we get by the pattern-matching we have discussed. The corrected routine for the extension should thus run:

~~~bash
#!/bin/bash
# ext.sh
shopt -s extglob

fullname="/path/myPDFfile"

if [[ "$fullname" =~ \. ]]
then
  echo $?
  ext="${fullname##*.}"
else
  echo $?
  ext=""
fi
echo "Extension is $ext"
~~~

Note that the `=~` sign is a _regular expression_ operator that has been inducted from `perl` into `bash` [@equaltilde]. The `[[...]]` expression returns a `0` for `true` and a `1` for `false`, which may sound contrary to expectations, but that is the correct behaviour in `bash`. This may be seen by pre-pending [`echo $?`](https://stackoverflow.com/questions/6834487/what-is-the-dollar-question-mark-variable-in-shell-scripting) to each branch of the `if` conditional.

Moreover, when matching, the left side is a string that should be double quoted to avoid errors, while the right side is a regular expression, or a constant that is either escaped as in `\.`, or in single quotes, like `'.'` [@dottest]. If a plain `.` is used, with no "protection", it will match any single character in accordance with regex rules, and we risk getting the wrong result. It is attention to every small detail that ensures success with `bash` scripts. You also learn patience on the way. \emojifont :wink: \normalfont

### Filenames with multiple dot characters

I have encountered occasions where the `fullname` of a file contains multiple `.` characters. In such cases, we must adopt a convention that the extension is what occurs to the _right of the rightmost_ dot character. We will avoid pathological cases like a filename _ending_ with a `.` character. If these additional assumptions hold, our pattern-matching for the extension will return the correct result.

## Filenames without a path

Before attempting to extract a `path`, we must check for the presence of a `/` in the `fullname` string. Otherwise, we risk getting the same errors as with missing extensions. The following script should be self-explanatory by now. Again, note that we either need to make the `/` character a literal, enclosed by single quotes, or we must escape it with a backslash, `\`. Note that this time, the forward slash is enclosed by single quotes; I find `\/` both inelegant and somewhat perplexing.

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
echo "Path is $path"
~~~

## The generalized filename parser

The revised file for parsing a filename into its components therefore needs to be augmented with these tests if it is to be robust and generic [@caveats]. Note also that if no input is given, there can be no meaningful output; so we have to test that there is at least one command-line argument.

Because filename parsing is a task that I have had to do repeatedly in different `bash` scripts, I decided that the final version of the script should find expression as a `bash function` rather than as a script.

Along the way, I encountered pitfalls and errors, too many to recount. Suffice it to say that my helper and guide in the debugging process has been the [Shellcheck utility](https://www.shellcheck.net/) [@shellcheck]. The file [`parse_filename.sh`]({attach}scripts/parse_filename.sh)[^2] is made available here for completeness without any warranties whatsoever. [The usual disclaimers about software merchantability](https://core.ac.uk/download/pdf/267973227.pdf) are implicit! \emojifont :wink: \normalfont

[^2]: Beware that although I have liberally replaced characters unsuited to Linux filenames with a hyphen or dash, later in this blog, the `-` character _cannot_ be used in the names of variables, functions, and the filenames of functions in `bash`.

## Prettifying non-standard filenames

We have now concluded the first part of processing a filename, and are ready to proceed to the second part, which is [prettifying](https://www.thefreedictionary.com/prettifying) a filename. Although filenames containing spaces, tabs, and non-alphanumeric characters _can_ be processed in Linux---when enclosed by single quotes---the natural etiquette in Linux file naming is not to use such non-standard characters.

But what happens if we are bequeathed files having such names? Renaming them one-by-one, by hand, will be laborious and even impractical. How may we automate the renaming of such files---to result in filenames that are both meaningful and Linux-friendly? That is what will occupy us for the rest of this blog.

## From cacophony to harmony

The original file naming convention in Linux is that there will be _no spaces_ or other non-alphanumeric characters, _except for the underscore_ character `_` in a filename[^3] [@unix]. This is because spaces are used as input field separators (IFS) to break up a string into its components: something known as [_word splitting_](https://mywiki.wooledge.org/WordSplitting?highlight=%28spaces%29%7C%28word%29%7C%28splitting%29) [@wordsplitting].

[^3]: The `-` character (dash or hyphen) assumes many roles: as the [standard input and standard output](https://en.wikipedia.org/wiki/Standard_streams), as a prefix to an option for commands, as a range specifier in regular expressions like `[a-z]`, etc. So, a filename should not start or end with the `-` character; its position elsewhere in a filename should not cause problems.

But not all filenames respect this nomenclature of alphanumeric plus underscore characters alone. What if you encountered a file named so: `El??Condor   _Pasa%^!.mp3`. How would you sanitize it into something that could be easily processed by Linux when supplied as an argument?

This set me developing a simple script to convert all non-compatible characters into acceptable characters so that the end result would be a sanitized, Linux-compatible filename that still retained some of its meaning. Here is my thought process as an algorithm:

#.  Retain underscores `_` unchanged;
#.  Replace every other non-alphanumeric character by a `-`; and
#.  Replace strings of consecutive `-` characters from the previous step by a single `-` character.
#.  Neither the first nor the last character of the modified filename shall be a `-` character.

The standard and most obvious way to do this is by using regular expressions and a tool such as [`sed`](https://www.grymoire.com/Unix/Sed.html), [`awk`](https://tldp.org/LDP/abs/html/awk.html), or [`perl`](https://perldoc.perl.org/perlretut). Moreover, the [POSIX character classes](https://www.regular-expressions.info/posixbrackets.html) such as `[:space:]`, `[:blank:]`, `[:punct:]` hold the key to concisely including all characters that need to be substituted with dashes. This was the trajectory I followed initially.

## Using `sed` to sanitize a filename

How might the unusual filename (or string)

`El??Condor   _Pasa%^!.mp3`

which contains three spaces, and five punctuation characters, be sanitized using `sed`[^4]?

[^4]: The underscore does not count as a punctuation character because it is not replaced.

Typically, `sed` works on text within a file. But we may also pass strings to `sed` as [literals rather than an input file](https://www.baeldung.com/linux/sed-with-string). Rather than stumble through the tedious path I took to success, I record below the final [`sed` one-liner](https://catonmat.net/sed-one-liners-explained-part-one) that I assembled. Note that we will henceforth use only the basename of this filename in all examples.

```bash
sed -r "s/([[:space:]]|[[:punct:]])+/-/g" <<< 'El??Condor   _Pasa%^!'
```

which gives the result:

```text
El-Condor-Pasa-
```

Note that _multiple_ spaces and punctuation characters have been replaced by _single_ hyphens or dashes. The `+` sign in the expression confers this behaviour. The fact that we want to change _both_ spaces and punctuation is the reason for the `|` alternation sign which might be loosely looked at as a logical [or]{.smallcaps}. The `g` parameter at the end (for global) means that _all_ such occurrences will be substituted. The `[[:space:]]` and `[[:punct:]]` incantations are called [POSIX character classes](https://www.regular-expressions.info/posixbrackets.html) [@posixcharclass]. The option `-r` is given to `sed` to confer the regular expression matching behaviour we are after. And the `<<<` allows an input to be given immediately to `sed` from the command line rather than from a file. The `s` refers to a substitution.

But, are we satisfied with our result? Not really, on two counts:

#.  We want to retain the underscore `_` character unchanged, if and when it occurs in the original string. An underscore in our original string has disappeared.
#.  We do not want a terminal hyphen in the modified filename, as in this case.

The second is easier to fix first. We will resort to the start-of-line anchor `^` and the end-of-line anchor `$` to eliminate (possible) initial and terminal hyphens. Since `sed` can work consecutively on the original string, or its modified variant, we can simply chain the three substitutions using pipes so:

```bash
sed -E "s/([[:space:]]|[[:punct:]])+/-/g"  <<< 'El??Condor   _Pasa%^!' | \
sed "s/^-//" | sed  "s/-$//"
```

to get

```bash
El-Condor-Pasa
```

almost as desired. The `-E` option is POSIX-compliant and needed to deal with extended regular expressions; in [GNU `sed`](https://www.gnu.org/software/sed/manual/html_node/Command_002dLine-Options.html) it is synonymous with the `-r` option. The `|` character indicates that the input for the second and third `sed` substitutions is the output from the previous `sed` command. The `+` denotes multiple consecutive instances of spaces and punctuation characters and the `g` denotes performing the substitution globally, i.e., as many times as the conditions require. The `//` means that there is no replacement character.

The requirement to pass underscores unchanged is more serious, because we need to modify the first `sed` replacement. Because the `[[:punct:]]` class also includes the underscore character, it is a sticky business to keep all the underscores but replace every other punctuation symbol by a dash. In fact, it negates the very notion and convenience of a POSIX character class.

What we want is some operation like a [set difference](https://mathworld.wolfram.com/SetDifference.html), for which the regex syntax is not available for `sed`. One _could_ enumerate all punctuation symbols and exclude only `_` from that list, and use that class instead of `[[:punct:]]`, but this approach strikes me as particularly [ham-fisted](https://idioms.thefreedictionary.com/Ham+Fisted).

A better and more felicitous way is to invert the requirement and _preserve_ the alphanumeric and underscore characters alone, and _replace everything else_ by a dash:

```bash
sed -E "s/([^A-Za-z0-9_])+/-/g" <<< 'El??Condor   _Pasa%^!' | \
sed "s/^-//" | sed  "s/-$//"
```

which gives:

```bash
El-Condor-_Pasa
```

Although it looks awkward---having a `-` followed by a `_`---this is exactly the desired output given our transformation rules. Note that the `^` character is used in the first `sed` command as a _negation_ of a character class, and in the second `sed` command as a start-of-string anchor. It is this overloading of meanings on a single symbol that leads to difficulties in understanding such expressions.

## Can it be done in `bash`?

But what about the nagging refrain, "Why not do it all in `bash` itself, using pattern matching"? So, rather than considering how to do this in `perl`, etc., I hacked my way through several iterations of trying to perform the substitution in `bash` itself.

### Pattern-matching, substitution, and substring removal

The expression `[A-Za-z0-9_]` has a rather fortuitous abbreviation as a POSIX character class in `bash`: it is denoted by `[[:word:]]`. The pattern-matching/replacement expression in `bash` therefore becomes:

```bash
#!/bin/bash
shopt -s extglob
#
filename='El??Condor   _Pasa%^!'
#
# The character class `[:word:]` includes all
# alphanumeric characters and the underscore.
# `^[:word:]` is the negation of this condition.
# So, we replace _all_ non-alphanumeric characters
# and non-underscores with the dash.
#
# The `+` sign though placed at the beginning rather than the end
# has the same meaning as in the `sed` expression.
# The `//` after $filename denotes multiple replacements
# just like the terminal `g` in the `sed` substitution expression.
#
newname="${filename//+([^[:word:]])/-}"
#
# We then trim off the first character in $newname in case
# it begins with a `-` character.
# Nothing happens if the first character is not a `-`.
#
newname="${newname/#-}"
#
# Next, we trim off the last character in $newname
# if it matches a dash.
# Nothing happens if the last character is not a `-`.
#
newname="${newname%-}"
echo "$newname"
```

It bears noting that in the last two expressions:

(a) there is no wildcard character `*` before the `-` in the first substring expression;

(a) there is no wildcard character `*` after the `-` in the second substring expression;

(a) consequently, in both cases, we are matching a _single_ initial or terminal`-` character, with no ill effects if either or both are missing; and

(a) we may assign the possibly truncated variable `newname` to itself.

We have accomplished what we set out to do with the filename. The absence of the `*` in the expression `newname="${newname%-}"` has morphed the pattern matching and substring removal we used for parsing filenames into a robust, removal of a _terminal_ `-`, without the need to test if it is the last character in the string. To demonstrate the terseness of this approach, I give below the same operation, with a slightly longer syntax, that is also available to us in `bash`.

### Using substring extraction

The syntax for substring extraction in `bash` is `${parameter:offset:length}` where `offset` is measured starting from `0` at the extreme left [@substring; @parametersubs; @stringops].

```bash
#!/bin/bash
shopt -s extglob
#
filename='El??Condor   _Pasa%^!'
#
# The character class [:word:] includes all
# alphanumeric characters and the underscore.
# ^[:word:] is the negation of this condition.
# So, we replace all non-alphanumeric characters and non-underscores
# with the dash.
#
newname="${filename//+([^[:word:]])/-}"
#
# Extract the first character in $newname and test if it is `-`.
# If so, remove it; else do nothing.
# Indexing starts with zero.
#
firstchar="${newname:0:1}"
if [[ "$firstchar" == '-' ]]
then
  newname="${newname:1}"
fi
echo "$newname"
#
# Extract the last character in $newname and test if it is `-`.
# If so, remove it; else do nothing.
#
lastchar="${newname: -1}"
if [[ "$lastchar" == '-' ]]
then
  newname="${newname::-1}"
fi
echo "$newname"
```
The points to especially note here are:

(a) The expression `"${newname:0:1}"` denotes the substring of length 1 starting from the beginning of the string `$newname` is obviously the first character in that string. It may also be written as `"${newname::1}"`.

(a) There is a space between the `:` and the `-` in the expression `"${newname: -1}"`. This space is inserted to avoid ambiguity with _another_ expression of the form `${parameter:-word}` which has a different function. The `-1` in `"${newname: -1}"` denotes the leftmost character in the string. Another way to write this is as `"${newname:0-1}"` [@lastchar]. Still another equivalent expression is `"${newname:(-1)}"`.

(a) The final idiom used above is `"${newname::-1}"`, which is shorthand for `"${newname:0:-1}"`. This operation strips off the final character in the variable `"${newname}"`. Because it is positional in nature, rather than the result of a pattern match, we have to test whether the terminal character is indeed a `-`.

(a) We could also have used the `=~` sign for these tests since we are matching a _single_ character. Nevertheless, it is better programming discipline to test for equality when dealing with a single character, as it is more specific.

It should be clear that the first version of substring extraction is clearer, less verbose, and less prone to error than the second one.

## Wrapping it all up

Because the simple filename cleanup attempted above is likely to find repeated use, it seemed sensible to bundle these latter manipulations into another function called [`prettify_filename.sh`]({attach}scripts/prettify_filename.sh). Along with [`parse_filename.sh`]({attach}scripts/parse_filename.sh), these two functions may be used from within a third script file as long as they are invoked with a `source` command. The script  [`MyFileRename.sh`]({attach}scripts/MyFileRename.sh) is an example of how these two functions may be used together. This triad of files, then, gives a complete set of tools to automate the renaming of problematic filenames in Linux.

The `parse_filename` and `prettify_filename` functions invoke certain environment variables to allow terminal output in colour. That functionality comes from a third `bash` function called [`colorize_terminal.sh`]({attach}scripts/colorize_terminal.sh). My `$HOME/.bashrc` file calls this function through the line

```bash
source "$HOME"/bin/colorize_terminal.sh
```

to make coloured terminal output available to all scripts.

## To explore further

The interested reader is referred to the [official documentation online](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Shell-Parameter-Expansion) for a comprehensive explanation of the dazzling features of _parameter expansion_ [@shellparamexp] and _substring removal_ [@wikisubstring] in `bash`. For an admirable summary of features like parameter expansion, do also visit the clear and comprehensive [BashGuide website](https://mywiki.wooledge.org/BashGuide/Parameters).

If you are familiar with `bash` but require an [aide-mémoire](https://www.thefreedictionary.com/aide+memoire) for some aspect of string matching or manipulation, the section with the heading ["Recommended Shell resources"](https://wiki.bash-hackers.org/start#recommended_shell_resources) is the best place to start your search [@bhwstart]. It contains a wealth of authoritative links that will speedily dispel your doubts, not to speak of saving you time.

## Feedback

Please [email me](mailto:feedback.swanlotus@gmail.com) your comments and
corrections.

\noindent A PDF version of this article is [available for download here]({attach}./pattern-matching-in-bash.pdf):

::: {.small .sf}
<https://swanlotus.netlify.app/blogs/pattern-matching-in-bash.pdf>
:::



