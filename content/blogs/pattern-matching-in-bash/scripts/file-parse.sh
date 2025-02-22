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
