#!/bin/bash
#
# parse_filename.sh
#
# Generic filename parsing routine that can be used in all scripts.
#
# Usage within script: source parse_filename
#
# Usage on command line: parse_filename $1
#
# The first command line parameter, $1, is expected to be
# a fully qualified or canonical filename:
#
# fullname="/path/to/file/basename.ext"
#
# The global parameters that become available from `parse_filename` are:
#
# $path is /path/to/file
# $filename is basename.ext
# $basename is basename
# $ext is ext
#
# There are some caveats as noted in
#
# http://mywiki.wooledge.org/BashFAQ/073
#
# 1. Does $1 contain a forward slash character?
# 2. Does $1 contain a dot character?
#
# If there is no forward slash character, the path is missing
# and $path should be the null string, but pattern-matching
# will return $1.
#
# If there is no dot character, the extension is missing
# and $ext should be the null string but pattern-matching
# will return $1.
#
# The tests that we perform below take care of these cases:
# (a) only a path is given without a filename; we need to exit
# (b) only a filename is given without a path; filename=fullname
# (c) only a basename is given without an extension; filename=basename
#
# To test the function, especially when troubleshooting,
# always invoke as:
#
# source parse_filename; parse_filename [argument]
#
# If the source line is left out, changes in parse_filename, made
# during troubleshooting, will not be reflected and will lead to
# needless perplexity.
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2017-04-13
# Last revised : 2017-04-13
# Last revised : 2017-05-06 # Exit if merely a directory.
# Last revised : 2023-03-09 # Recast as a bash function with one parameter.
# Last revised : 2023-03-12 # Completed extensive debugging.
#
### Start of Preliminaries ###
#
shopt -s extglob # extended regular expression matching in the shell
#
function parse_filename {
#
# $1 is assumed to contain a canonical filename
# is to be split into
# (a) $path
# (b) $filename
# (c) $basename
# (d) $ext
#
# Initialize all global variables to null strings
#
path=""
filename=""
basename=""
ext=""
#
# Check whether exactly one argument
# is supplied with command invocation.
#
echo "Number of arguments is: $#"
if [[ $# -ne 1 ]] # Need exactly one command line argument
then
  echo -e "${BOLD_YELLOW}Usage: $(basename "$0") /path/basename.ext${RESET_COLOR}"
  return 1
fi
#
fullname="$1"
# echo "fullname is $fullname." # Uncomment for troubleshooting.
#
# Ensure that given argument
# is not a mere directory like /path/to/ with no filename.
# This _starts_ and _ends_ with a forward slash `/`.
# We use this as a test.
# Note that:
# `${fullname:0:1}` may be shortened to `${fullname::1}` and
# `${fullname:(-1):1}` may be shortened to `${fullname:(-1)}` or to
# `${fullname: -1}`
#
if [[ "${fullname:0:1}" =~ '/' && "${fullname:(-1):1}" =~ '/' ]]
then
  echo -e "${BOLD_MAGENTA}Given argument is a directory with terminal forward slash no filename. Exiting!${RESET_COLOR}"
  return 2
fi

if [[ -e "$fullname" && -d "$fullname" ]]
then
  echo -e "${BOLD_CYAN}Given argument is a known directory with no filename. Exiting!${RESET_COLOR}"
  return 2
fi
#
### Extract $path ###
#
# Check that $fullname contains the forward slash character.
#
# If so, approach from the right until the _first_ `/`
# is encountered and throw away everything
# from the _right_ end up to and including that `/`.
# Set $path to the remaining string.
#
# Otherwise, set $filename to $fullname.
# Note that $path has already been initialized
# to the empty string.
#
if [[ "$fullname" =~ '/' ]]
then
  path="${fullname%/*}"
else
  filename="$fullname"
fi
echo -e "path is ${BOLD_GREEN}$path${RESET_COLOR}"
#
### Extract $filename ###
#
# If $path is empty and $filename is
# non-empty, having been set above, do nothing.
#
# If $filename is an empty string, as initialized,
# extract it as outlined below.
#
# Approach from the left until the _last_ `/` character
# is encountered and throw away everything
# from the _left_ end up to and including that `/`.
#
if [[ "$filename" == "" ]]
then
  filename="${fullname##*/}"
fi
echo -e "filename is ${BOLD_GREEN}$filename${RESET_COLOR}"
#
### Extract $basename ###
#
# Check that there is a dot character in $filename.
# If there is, proceed as below.
#
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
if [[ "$filename" =~ \. ]]
then
  basename="${filename%.*}"
else
  basename="$filename" # no extension
fi
echo -e "basename is ${BOLD_GREEN}$basename${RESET_COLOR}"
#
### Extract $ext ###
#
# If $fullname contains a dot character, extract $ext as below.
#
# Approach from the _left_ until the _last_ `.` character
# is encountered and throw away everything
# from the _left_ end up to and including that last `.`.
#
# Otherwise, $ext is the empty string, as already initialized.
#
if [[ "$fullname" =~ \. ]]
then
  ext="${fullname##*.}"
fi
echo -e "ext is ${BOLD_GREEN}$ext${RESET_COLOR}"

# export path
# export filename
# export basename
# export ext
}
#
# Prototype the function. fullname is $1.
# Once the function is done, it makes available
# these four global variables:
#
# (a) $path
# (b) $filename
# (c) $basename
# (d) $ext
#
# export -f parse_filename
