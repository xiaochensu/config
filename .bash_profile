GOPATH=/var/root/go/

export PATH=${PATH}:${GOPATH}/bin
export PATH=${PATH}:/usr/local/mysql/bin

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export GO111MODULE=on

alias readlink=greadlink
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw $1"
alias startnginx="brew services start nginx"
alias stopnginx="brew services stop nginx"

export GPG_TTY=$(tty)
