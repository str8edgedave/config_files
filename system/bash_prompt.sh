#!/bin/bash

# Provides a colourized bash prompt, following Red Hat's standard prompt format.
# Tested on Red Hat Enterprise Linux 8 & 9, and Fedora 38, 39, & 40
# If git-core is installed, the prompt will include basic git information
#
# To install copy into /etc/profile.d/

if [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]]; then
  source /usr/share/git-core/contrib/completion/git-prompt.sh
  GITPS=1
fi
RESET='\[\e[0m\]'
RED='\[\e[0;91m\]'
GREEN='\[\e[0;92m\]'
BLUE='\[\e[0;96m\]'
YELLOW='\[\e[0;93m\]'
WHITE='\[\e[0;97m\]'

if [[ ${GITPS} == 1 ]]; then
  if [[ ${EUID} == 0 ]]; then
    PS1="$WHITE[$RED\u$RESET@$BLUE\h$RESET $YELLOW\W$RESET"'$(__git_ps1 " (%s)")'"$WHITE]$RESET\\$ "
  else
    PS1="$WHITE[$GREEN\u$RESET@$BLUE\h$RESET $YELLOW\W$RESET"'$(__git_ps1 " (%s)")'"$WHITE]$RESET\\$ "
  fi
else
  if [[ ${EUID} == 0 ]]; then
    PS1="$WHITE[$RED\u$RESET@$BLUE\h$RESET $YELLOW\W$WHITE]$RESET\\$ "
  else
    PS1="$WHITE[$GREEN\u$RESET@$BLUE\h$RESET $YELLOW\W$WHITE]$RESET\\$ "
  fi
fi
