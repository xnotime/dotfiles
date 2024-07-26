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
export PATH="$PATH:$HOME/.inst/arduino"
export PATH="$PATH:$HOME/.inst/_appimages"

alias sc="swaymsg workspace Code && exit"

# (End of manually added content)

. "$HOME/.cargo/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/landon/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/landon/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

# pnpm
export PNPM_HOME="/home/landon/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $HOME/.inst/g4/install/bin/geant4.sh

