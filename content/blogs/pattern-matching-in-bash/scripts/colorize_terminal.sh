#!/bin/bash
#
# colorize_terminal is a function.
# It exports color variables and makes them available for bash scripts.
# It may be called from within ~/.bashrc or from within any script.
#
# R (Chandra) Chandrasekhar
# independent Scholar, Thinker, Author, Researcher (iSTAR)
# lnesqrt1cos0@gmail.com | chyavana@gmail.com
# First written: 2015
# Last revised : 2023-03-09
#
function colorize_terminal {
  export RED='\e[0;31m'
  export GREEN='\e[0;32m'
  export YELLOW='\e[0;33m'
  export BLUE='\e[0;34m'
  export MAGENTA='\e[0;35m'
  export CYAN='\e[0;36m'
  export WHITE='\e[0;37m'
  #
  export BOLD_RED='\e[1;31m'
  export BOLD_GREEN='\e[1;32m'
  export BOLD_YELLOW='\e[1;33m'
  export BOLD_BLUE='\e[1;34m'
  export BOLD_MAGENTA='\e[1;35m'
  export BOLD_CYAN='\e[1;36m'
  export BOLD_WHITE='\e[1;37m'
  #
  export BLACK='\e[\030'
  export BOLD='\e[\033' # Else use BOLD="tput bold"
  export RESET_COLOR='\e[m'
  export RESET_TERMINAL_COLOR="tput sgr0"
}

colorize_terminal

# NOTES:
#
# To see the current database, run
#
# dircolors --print-database
#
# See
#
# http://www.tldp.org/LDP/abs/html/colorizing.html
#
# https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#
# and
#
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#

