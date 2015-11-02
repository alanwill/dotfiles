# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Regular system alias for a bunch of stuff
alias b="light -S "
alias cd=" cd"
alias con="connmanctl"
alias df="df -h"
alias dstat="dstat -c -l -m -n -d -y "
alias feh="feh -W 1920 -H 1080"
alias json="python -mjson.tool"
alias grep="grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn"
alias less="less -R"
alias ls="ls -h"
alias rsync="rsync -avhP"
alias war="jar -cvvf "
which pigz 2>&1 >/dev/null && alias gzip="pigz"
alias sessions="tmux list-sessions"
alias attach="tmux attach-session -t"
alias tclip="tmux show-buffer|xsel"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
