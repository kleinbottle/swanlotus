#! /bin/bash
# parsefilename
#
# Generic filename parsing routine to be used in all scripts.
# The first command line parameter is expected to be a fully qualified filename.
# The global parameters that become available from `parsefilename` are:
# $path
# $file
# $base
# $ext

# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# chyavana@gmail.com
# First written: 2017-04-13
# Last revised : 2017-04-13
# Last revised : 2017-05-06 # Exit if merely a directory.

### Start of Preliminaries ###

shopt -s extglob # extended regular expression matching in the shell

# Colored terminal output is already enforced by ~/.bashrc

# Script invocation

if [[ $# -lt 1 ]] # No command line argument
then
  echo -e "${BOLD}${YELLOW}Usage: $(basename "$0") filename[.extension]${RESET_COLOR}"
  exit 1
fi

fullname="$1"

# Is it merely a directory? If so, exit, because we are dealing with regular files here.
# TODO: What complications arise when we deal with symbolic links?
# TODO: What happens if the entity does not exist? Does the calling script have to check?

if [[ -d "$fullname" ]]
then
  echo "Given argument is a directory. Exiting!"
  exit 1
fi

# 1. Does $1 contain a dot character?
# 2. Does $1 contain a slash character?
# In each case, modify $fullname if there is an absence of dot or slash.
# 
# For the rationale, see this quote from
# http://mywiki.wooledge.org/BashFAQ/073
# Note that trying to get the directory component of the pathname with
# PathPref="${FullPath%/*}" will fail to return an empty string
# if $FullPath is "SomeFilename.ext" or some other pathname without a slash.
# Similarly, trying to get the file extension using FileExt="${Filename#*.}"
# fails to return an empty string if $Filename has no dot (and thus no extension).

if [[ ! "$fullname" =~ '.' ]]
then
  fullname="$fullname."
fi

if [[ ! "$fullname" =~ '/' ]]
then
  fullname="./$fullname"
fi

# Use Parameter Expansion (PE) to extract the components of the filename.
# NOTE: The anchor characters like dot and slash are also removed below.

path="${fullname%/*}" # discard everything from the end until the first slash from the right
file="${fullname##*/}" # discard everything from the start until the last slash from the left
base="${file%%.*}" # discard everything from the end until the last dot from the right
ext="${file#*.}" # discard everything from the start until the first dot from the left

# For troubleshooting uncomment the lines below

# echo "Path: $path"
# echo "File: $file"
# echo "Base: $base"
# echo "Extension: $ext"

# Note that when the extension $ext is empty, one might need to furnish a specific extension
# like `tex` or `md` or something else. In such cases, $ext should be set 
# to that value in the calling script.
# File existence checking should be done in the calling script.
