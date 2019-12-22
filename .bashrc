#PS1="\u@\h:\w> "
PS1='`[[ \$? == 0 ]] && tput sgr0 || tput bold`\u@\h:\w>`tput sgr0` '

### exit if not interactive shell ###
[ -z "$PS1" ] && exit

HISTSIZE=10000
export EDITOR=vi
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/bin:$PATH:/sbin

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm

# todo stuff
export TODOTXT_DEFAULT_ACTION=ls
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'

[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases
