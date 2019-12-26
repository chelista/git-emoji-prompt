#!/bin/bash

# Directory of .git-emoji-prompt
rootdir=~/.git-emoji-prompt

# It is unknown if there are nay copyrights for the emojis.
# If there are any conflicts remove the offending emojis.
# For any themes just drop a list of emojis in a single line.
# to a file. The file is the name of the theme
theme=animals

# Path to bash completion. Copied from obtained from mint 19.3
source $rootdir/bash-completion

# This is the script by Mr. Shawn O. Pearce. 
# See script for further information
source $rootdir/git-prompt

# Named colors
source $rootdir/color

# Function definitionas
source $rootdir/fun

# Sample template to use as PS1
# The colors are provided as a convenience; please enahnce
#export PS1='\[\033[${PROMPT_GREEN}m\]\u@\h\[\033[34m\]$(__git_ps1 " [\[\033[32m\]%s\[\033[34m\]]") \W$(BREAK)$(RANDOM_EMOJI) \$\[\033[00m\] '

export PS1='\[\033[${COLOR_GREEN}m\]\u@\h\[\033[34m\]$(__git_ps1 " [\[\033[32m\]%s\[\033[${COLOR_BLUE}m\]]") \W$(BREAK)$(RANDOM_EMOJI) \$\[\033[00m\] '

