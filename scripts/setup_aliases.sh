#!/usr/bin/env bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#########################################################################################
#						Set Aliases for Ease of Use										#
#########################################################################################
alias gnuplot="rlwrap -a -c gnuplot"
alias mountiso="sudo mount -o loop -t iso9660"
alias ssh='ssh -X'
alias ps2pdf='ps2pdf13 -dPDFSETTINGS=/prepress -dSubsetFonts=true -dEmbedAllFonts=true -dMaxSubsetPct=100 -dCompatibilityLevel=1.3'
alias tw='open -a /Applications/TextWrangler.app'

#########################################################################################
#					Set Aliases for LANL Computers										#
#########################################################################################

alias conejo='ssh -Y -t -l lvanroekel wtrw ssh cj-fe'
alias moonlight='ssh -Y -t -l lvanroekel wtrw ssh ml-fe'
alias mustang='ssh -Y -t -l lvanroekel wtrw ssh mu-fe'
alias mustang_python='ssh -t -X -L 8889:localhost:2222 lvanroekel@wtrw ssh -L 2222:localhost:8889 mu-fe'alias wolf='ssh -Y -t -l lvanroekel wtrw ssh wf-fe'
alias wolf='ssh -Y -t -l lvanroekel wtrw ssh wf-fe'
alias gpfst_globus='ssh wtrw -t ssh gpfst7-fe'

#########################################################################################
#					Set Aliases for  Other HPC 									#
#########################################################################################

alias cori='ssh -Y lvroekel@cori.nersc.gov'
alias cori_python='ssh -L 8889:localhost:8889 lroekel@cori.nersc.gov'
alias edison='ssh -Y lvroekel@edison.nersc.gov'
alias mira='ssh -Y lvanroek@mira.alcf.anl.gov'
alias titan='ssh -Y vanroek@titan.ccs.ornl.gov'
alias yellowstone='ssh -Y lvroekel@yellowstone.ucar.edu'

#########################################################################################
#					Set Aliases for Job Queues	    									#
#########################################################################################
alias myq_msub='showq -u `whoami`'

alias git_lettuce='git clone git@github.com:douglasjacobsen/mpas-lettuce-testing testing_mpas'

alias reset_unity='stop unity-panel-service; start unity-panel-service'

#########################################################################################
#					Set Commands for Terminal History Search							#
#########################################################################################
set filec
set history = 100 
set savehist = 100 

bind -r "\e[A"
bind -r "\e[B"
bind -r "\e[1;5C"
bind -r "\e[1;5D"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word' 

ON_UBUNTU=`uname -a | grep "Ubuntu"`

if [ -n "${ON_UBUNTU}" ]; then
    export PATH="${PATH}:/home/douglasj/Documents/metis-4.0"
    export PATH="${PATH}:/home/douglasj/AndroidTools/android-studio/sdk/platform-tools"
    export PYTHONPATH="${PYTHONPATH}:/home/douglasj/software/python/lib/python2.7/site-packages"

    shopt -s direxpand
fi

export PATH="${PATH}:${HOME}/scripts"
