[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias g="git status"
alias gc="git commit"
alias ga="git add"
alias gco="git checkout"
alias ll="ls -la"
