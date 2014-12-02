SSHHOME=${SSHHOME:=~}

source $SSHHOME/.sshrc.d/.scripts/aliases
source $SSHHOME/.sshrc.d/.scripts/git-completion.bash
source $SSHHOME/.sshrc.d/.scripts/git-prompt.sh

function _git_prompt() {
    sp=$(__git_ps1 " (%s)")
    if [[ x${sp} = "x ((unknown))" ]] || [[ `pwd` == ${HOME} ]] ; then
        sp="";
    fi
    echo "$sp";
}

if [[ "x"`id -u` = "x0" ]] ; then PS2="#> "; fi
hostname=`hostname -s`
if [[ ${hostname} == $USER ]] ; then hostname="local"; fi
PS1='[\u@${hostname}:\w$(_git_prompt)]${PS2}'
export VIM=$SSHHOME/.sshrc.d
export VIMRUNTIME=/usr/share/vim/vim7*

alias ssh=$SSHHOME/.sshrc.d/sshrc
export XDG_CONFIG_HOME=$SSHHOME/.sshrc.d/
