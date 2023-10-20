## To create environment variable
export OFFICE=LTIMindtree


## Create alias
alias up=uptime
### to make alias persistence, add it to ~/.profile

## to print env variable
echo $OFFICE

# to ptint all 
env

## To make variable persistence, add them to 
~/.profile
~/.pam_environment

## bash promt
echo $PS1

\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$