#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LS_COLORS="di=1"
alias ls='ls -F --color=auto'
alias sl='ls -F --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias vi='vim'
alias vmi='vim'
EDITOR=vim
export EDITOR
# if [[ $XDG_SESSION_TYPE != 'wayland' ]]
# then
#   setxkbmap -option caps:ctrl_modifier
# fi
bind 'set completion-ignore-case on'
bind "set show-all-if-ambiguous on"
bind '"\C-w":backward-kill-word'
PS1='[\u@\h \w]\$ '

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/dengchaoran/Downloads/fmt-11.2.0/build/"

# export PATH="$PATH:$HOME/.cargo/bin"
# export PATH="$PATH:/home/dengchaoran/Project/qemu-7.0.0/riscv64-linux-musl-cross/bin/"
# export PATH="$PATH:/home/dengchaoran/Project/qemu-7.0.0/riscv64-unknown-elf-gcc/bin/"
# export PATH="/home/dengchaoran/Project/qemu-7.0.0/:$PATH"

# export NPC_HOME=/home/dengchaoran/project/ysyx/ysyx-workbench/npc
# export NVBOARD_HOME=/home/dengchaoran/project/ysyx/ysyx-workbench/nvboard
# export NAVY_HOME=/home/dengchaoran/project/ysyx/ysyx-workbench/navy-apps
# export LD_LIBRARY_PATH=/home/dengchaoran/project/ysyx/ysyx-workbench/nemu/build
# export PATH="$PATH:/home/dengchaoran/project/ysyx/ysyx-workbench"
# export AM_HOME=/home/dengchaoran/project/ysyx/ysyx-workbench/abstract-machine
# export NEMU_HOME=/home/dengchaoran/project/ysyx/ysyx-workbench/nemu
