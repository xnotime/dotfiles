# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# (End of original content)

PS1='\e[1m\e[36m[\u \e[34m\W\e[36m]\e[0m$ '

export PATH="$PATH:$HOME/.inst/persway/target/release"
export PATH="$PATH:$HOME/.inst/swww/target/release"
export PATH="$PATH:$HOME/.inst/zig/build/stage3/bin"
export PATH="$PATH:$HOME/.inst/zls/zig-out/bin"
export PATH="$PATH:$HOME/.inst/marksman/_built"
export PATH="$PATH:$HOME/.inst/xfemm/cfemm/bin"
export PATH="$PATH:$HOME/.inst/arduino"
export PATH="$PATH:$HOME/.inst/crystalline"
export PATH="$PATH:$HOME/.inst/mc/minecraft-launcher"
export PATH="$PATH:$HOME/.inst/luanti"
export PATH="$PATH:$HOME/.inst/websocat"
export PATH="$PATH:$HOME/.inst/bambu"
export PATH="$PATH:$HOME/.inst/_appimages"
export PATH="$PATH:$HOME/.inst/resolve"

alias sc="swaymsg workspace Code && exit"

TERM=xterm-256color

# (End of manually added content)

. "$HOME/.cargo/env"



# pnpm
export PNPM_HOME="/home/landon/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $HOME/.inst/g4/install/bin/geant4.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/landon/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/landon/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/landon/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/landon/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> coursier install directory >>>
export PATH="$PATH:/home/landon/.local/share/coursier/bin"
# <<< coursier install directory <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/home/landon/.pixi/bin:$PATH"
