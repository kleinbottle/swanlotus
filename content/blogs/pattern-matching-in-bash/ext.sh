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
echo "Extension is $ext."
