#!/bin/bash
# prettify_filename.sh
#
# The function expects one argument, $1, which represents the
# $filename to be modified.
#
# Function to replace non-standard characters in Linux
# strings/filenames where where alphanumerics and underscores
# are retained unchanged and all other characters are
# replaced by hyphens, satisfying the following conditions:
#
# (a) Consecutive hyphens are collapsed into a single hyphen; and
# (b) Leading and trailing hyphens are removed.
#
# Note that strings containing hyphens may be used in filenames
# that contain `bash` scripts but not in filenames for
# `bash` functions. `Likewise, bash` variable names cannot
# ` contain hyphens.
#
# Underscores do not suffer from this problem and may be used freely.
#
# My preference for hyphens over underscores is that names
# with hyphens are, for me, easier to read and recognize than
# those with underscores. If underscores are fine with you,
# amend this function to serve you best.
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2023-02-28
# Last revised : 2023-03-10
#
shopt -s extglob # extended globbing
#
function prettify_filename {
#
# Check whether exactly one argument
# is supplied with command invocation.
#
if [[ $# -ne 1 ]] # Need exactly one command line argument
then
  echo -e "${BOLD_YELLOW}Usage: $(basename "$0") filename${RESET_COLOR}"
  return 1
fi
#
# Initialize variables
#
new_basename=""
basename="$1"
#
# The POSIX-character class `[:word:]` includes all
# alphanumeric characters and the underscore.
# `^[:word:]` is the negation of this condition.
# So, we replace _all_ non-alphanumeric characters
# and non-underscores with the dash.
#
# The `+` sign though placed at the beginning in `bash` rather
# than the end as in `sed` has the same meaning as in the
# `sed` substitution expression. This means one or more
# of the affected characters are replaced by a _single_ `-`.
#
# The `//` after $filename denotes multiple replacements
# just like the terminal `g` in the `sed` substitution expression.
#
new_basename="${basename//+([^[:word:]])/-}"
echo -e "1 new_basename is $new_basename"
#
# We then trim off the first character in $newname in case
# it begins with a `-` character.
# Nothing happens if the first character is not a `-`.
#
new_basename="${new_basename/#-}"
#
# Next, we trim off the last character in $newname
# if it matches a dash.
# Nothing happens if the last character is not a `-`.
#
new_basename="${new_basename%-}"
echo -e "2 new_basename is $new_basename"

# if [[ "$ext" == "" ]]
# then
#   new_filename="$new_basename"
# else
#   new_filename="$new_basename.$ext"
# fi

echo -e "new_basename is $new_basename"
# export new_basename
}

# export -f prettify_filename
