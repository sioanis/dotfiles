export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

alias gpull="git pull"
alias grebase="git fetch origin && git rebase -i origin/master"
alias dlog="docker-compose logs -f --tail=50 web"
alias gclean="git branch --merged origin/master | xargs git branch -d"
alias greset="git branch | grep -v \"master\" | xargs git branch -D"
alias dup="docker-compose up -d"
alias dweb="docker-compose up -d web"
alias nis="npm ci && npm start"
alias ns="npm start"
alias ni="npm i"
alias nci="npm ci"
alias ds="docker-compose exec web bash -c \"cd frontend && npm start\""
alias dis="docker-compose exec web bash -c \"cd frontend && npm ci && npm start\""
alias dr="docker-compose up -d --force-recreate"
alias dc="docker exec -it leaflink_web_1 /bin/bash"
alias llreset="bash bin/local-init.sh"
alias llstart="bash bin/local-start.sh"
alias llstop="bash bin/local-stop.sh"

alias gadd="git add --all && git commit --amend --no-edit"
alias gaddp="git add --all && git commit --amend --no-edit && git push -f"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/bin:$PATH"

ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(git)

source $ZSH/oh-my-zsh.sh
