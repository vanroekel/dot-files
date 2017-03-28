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
alias jpn='jupyter notebook'

#########################################################################################
#					Set Aliases for LANL Computers										#
#########################################################################################

alias conejo='ssh -Y -t -l lvanroekel wtrw.lanl.gov ssh cj-fe'
alias conejo_python='ssh -Y -t -L 8898:localhost:2232 lvanroekel@wtrw.lanl.gov ssh -L 2232:localhost:8898 cj-fe'
alias moonlight='ssh -Y -t -l lvanroekel wtrw.lanl.gov ssh ml-fe'
alias grizzly='ssh -X -t -l lvanroekel wtrw.lanl.gov ssh gr-fe1'
alias grizzly_python='ssh -X -t -L 8899:localhost:2232 lvanroekel@wtrw.lanl.gov ssh -L 2232:localhost:8899 gr-fe1'
alias blues='ssh -l lvanroe blues.lcrc.anl.gov'
alias blues_python='ssh -L 8855:localhost:8855 lvanroe@blues.lcrc.anl.gov'
alias wolf_paraview='ssh -l lvanroekel -t -X -L 11111:localhost:2231 wtrw.lanl.gov ssh -L 2231:localhost:2231 wf-fe'
alias wolf_python='ssh -t -X -L 8811:localhost:2233 lvanroekel@wtrw.lanl.gov ssh -L 2233:localhost:8811 wf-fe'
alias wolf='ssh -Y -t -l lvanroekel wtrw.lanl.gov ssh wf-fe'
alias gpfst_globus='ssh -l lvanroekel wtrw.lanl.gov -t ssh gpfst7-fe'

#########################################################################################
#					Set Aliases for  Other HPC 									#
#########################################################################################

alias rhea='ssh -Y -L 8844:localhost:8844 vanroek@rhea.ccs.ornl.gov'
alias cori='ssh -Y lvroekel@cori.nersc.gov'
alias cori_python='ssh -L 8890:localhost:8890 lvroekel@cori.nersc.gov'
alias edison='ssh -Y lvroekel@edison.nersc.gov'
alias edison_python='ssh -Y -L 8877:localhost:8877 lvroekel@edison.nersc.gov'
alias mira='ssh -Y lvanroek@mira.alcf.anl.gov'
alias titan='ssh -Y vanroek@titan.ccs.ornl.gov'
alias yellowstone='ssh -Y lvroekel@yellowstone.ucar.edu'

#########################################################################################
#					Set Aliases for Job Queues	    									#
#########################################################################################
alias myq_msub='showq -u `whoami`'

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
