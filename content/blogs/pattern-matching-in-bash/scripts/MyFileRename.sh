#!/bin/bash
# MyFileRename.sh
#
# Rename music and other files to make them Linux-friendly
#
source "parse_filename.sh"
source "prettify_filename.sh"

if [[ $# -ne 1 ]] # Need exactly one command line argument
then
  echo -e  "${BOLD_YELLOW}Usage: $(basename "$0") [full filename]${RESET_COLOR}"
  exit 1
fi

path=""
filename=""
basename=""
ext=""
new_basename=""

fullname="$1"
echo "MyFileRename: $fullname"


parse_filename "$fullname"
if [[ $? == 1 || $? == 2 ]]
then
  exit 3
fi

echo "MyFileRename: $path | $filename | $basename | $ext"

echo -e "${BOLD_CYAN}basename in MyFileRename is ${BOLD_MAGENTA}$basename${RESET_COLOR}"

echo -e "This is basename: $basename"


prettify_filename "$basename"
if [[ $? == 1 ]]
then
  exit 4
fi

#
# We rename the file
#
# if [[ -f "filename" ]]
# then
#   echo "mv $filename $new_basename.$ext"
# fi

echo -e "New basename from prettify_filename is $new_basename"

echo -e "New filename is ${BOLD_GREEN}$new_basename.$ext${RESET_COLOR}"
