PATH=$HOME/bin:/home/adam/.local/bin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/games

alias "git-log"="git log --oneline --graph --decorate --all"
alias ls="echo \"ls -lioF\"; ls -lioF"
alias g="git status"

export DISPLAY=:0
export GIT_EDITOR="vim"
export EDITOR="vim"
export LC_CTYPE="en_US.UTF-8"
# export PS1="\u@\H:\w$ "
export PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '
export TERM="xterm-color"
export TERM="xterm-256color"

# enable vi mode
set -o vi

# npm run without doas writes there
export PATH=~/.npm-global/bin:$PATH
#export PATH HOME TERM

if [ -x "$(command -v randverse)" ]; then
    randverse # random verse from the Bible
else
    fortune
fi

LEDGER_FILE=$HOME/finance/current_year
export LEDGER_FILE

# I like when man shows me %
export MANPAGER=more

# set default page for links
export WWW_HOME='http://google.co.uk/'

echo
echo "---------------------------------------------------------------------------------------"
echo " Będziesz tedy miłował Pana, Boga twego, ze wszystkiego serca twego, i ze wszystkiej"
echo " duszy twojej, i ze wszystkiej siły twojej."
echo "---------------------------------------------------------------------------------------"
echo
echo "---------------------------------------------------------------------------------------"
echo " A Jezus mu rzekł: Będziesz miłował Pana, Boga twego, ze wszystkiego serca twego,"
echo " i ze wszystkiej duszy twojej i ze wszystkiej myśli twojej."
echo " To jest pierwsze i największe przykazanie."
echo " A wtóre podobne jest temuż: Będziesz miłował bliźniego twego, jako samego siebie."
echo "---------------------------------------------------------------------------------------"
echo
echo "-------------------------------------"
echo " If it is not right, do not do it."
echo " If it is not true, do not say it."
echo "-------------------------------------"
echo
