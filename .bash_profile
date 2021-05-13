parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[34m\]\$(parse_git_branch)\[\033[32m\] $ \[\033[0m\]"
