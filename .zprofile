
eval $(ssh-agent)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
NODE_VERSION=18
nvm use $NODE_VERSION # bash profile commands
 
# bash profile commands
alias szp="source ~/.zprofile"
alias czp="code ~/.zprofile"
 
# git commands
alias gi="git init"
alias gcl="git clone"
# status
alias gst="git status"
alias gsts="git status -s" # status short
alias gstsb="git status -sb" # status short branch
alias gstl="git status -l" # status long
alias gstv="git status -v" # status verbose
alias gstu="git status -u" # status untracked
# add
alias ga="git add"
alias gaa="git add ."
alias gap="git add -p" # add patch
alias gae="git add -e" # add edit
alias gai="git add -i" # add interactive
alias gau="git add -u" # add update
# diff
alias gd="git diff"
alias gds="gd --staged"
alias gdc="gd --cached"
alias gdv="gd -v" # diff verbose
# commit
alias gc="git commit"
alias gcA="git commit --all"
alias gca="git commit --amend"
alias gcp="git commit -p" # commit patch
alias gcm="git commit -m" # commit message
alias gcam="git commit --amend -m" # commit amend message
# branch
alias gb="git branch"
alias gba="git branch -a" # branch all
alias gbd="git branch -d" # branch delete
alias gbD="git branch -D" # branch force delete
alias gbr="git branch -r" # branch remote
alias gbm="git branch -m" # branch move
alias gbs="git branch -s" # branch setup
alias gbl="git branch -l" # branch list
# checkout
alias gco="git checkout"
alias gcb="git checkout -b" # checkout branch
alias gcs="git checkout --" # checkout stash
alias gct="git checkout -t" # checkout track
alias gcd="git checkout develop"
alias gcod="git checkout origin/develop"
alias gcom="git checkout origin/master"
# push
alias gp="git push"
alias gpf="git push -f" # force push
alias gpo="gp origin"
alias gpod="gpo develop"
alias gpom="gpo master"
alias gpuo="gp --set-upstream origin"
# pull
alias gpl="git pull"
alias gplf="gpl --ff-only" # pull fast forward only
alias gplnf="gpl --no-ff" # pull no fast forward
alias gplr="gpl --rebase" # pull rebase
alias gplo="gpl origin"
alias gplod="gplo develop --rebase" # pull origin develop with rebase
alias gplom="gplo master"
# fetch
alias gf="git fetch"
alias gfom="gfo master"
alias gfa="gf --all" # fetch all
alias gff="gf --force"
alias gfv="gf --verbose"
alias gfp="gf --prune"
alias gfo="gf origin"
alias gfod="gfo develop"
# merge
alias gm="git merge"
alias gma="gm --abort"
alias gmc="gm --continue" 
alias gmt="gm --tool"
alias gms="gm --squash"
alias gmm="gm --no-ff" # merge no fast forward
alias gmv="gm --verbose"
alias gmd="gm develop"
alias gmm="gm master"
alias gmo="gm origin"
alias gmod="gmo develop"
alias gmom="gmo master"
# rebase
alias gr="git rebase"
alias gri="gr -i" # rebase interactive
alias grc="gr --continue"
alias gra="gr --abort"
alias grm="gr --merge"
alias grs="gr --skip"
alias grv="gr --verbose"
alias grd="gr develop"
alias grm="gr master"
alias grod="gr origin/develop"
alias grom="gr origin/master"
# remote
alias grm="git remote"
alias grmv="grm -v" # remote verbose
alias grma="grm add"
# stash
alias gs="git stash"
alias gsu="gs -u" # stash untracked
alias gsl="gs list" # stash list
alias gsll="gsl --long" # stash list long
alias gslll='gsl --long --name-status' # stash list long name status
alias gsp="gs pop" # stash pop
alias gssh="gs show -p" # stash show patch
alias gss="gs save" # stash save
alias gsa="gs apply" # stash apply
alias gsd="gs drop" # stash drop
# log
alias gl="git log"
alias glo="gl --oneline"
alias glol="glo --graph --decorate"
alias glg="gl --graph"
alias glga="glg --all"
alias glgao="glgao --oneline"
alias glh="git log -1 HEAD" # show last commit
# reset
alias grh="git reset HEAD --" # reset  to HEAD
alias grhom="git reset --hard origin/master"
alias grhod="git reset --hard origin/develop"
# restore
alias grs="git restore ."
alias grss="git restore . --staged"
 
# worktree
alias gw="git worktree"
alias gwb="gw --bare"
alias gwa="gw add" # add worktree
alias gwab="gwa -b" # add worktree branch
alias gwl='gw list'
alias gwm='gw move'
alias gwr='gw remove'
alias gwp='gw prune'
 
# remove
alias rf="rm -rf"
 
# special git command combos
# combo commands
alias amend="git add -A && git commit -m" # add all and commit
alias sneak="git commit --amend --no-edit" # sneak in a change
alias undo="gaa && sneak && gpf" # undo last commit push
alias far="gfa && gr" # fetch all and rebase
alias fari="gfa && gri" # fetch all and rebase interactive
alias fpr="gfp && gr" # fetch prune and rebase
alias fpri="gfa && gri" # fetch prune and rebase interactive
alias cpb="git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' | pbcopy" # copy current branch name to clipboard
alias cpde="cp .env.development.copy .env" # copy env variables from development copy
alias ce="touch .env && code .env" # create and open env file
alias cpe="pbcopy < .env" # copy env variables
alias cpel="pbcopy < .env.local" # copy env variables
alias pe="touch .env && pbpaste > .env && grs" # paste env variables
alias pel="touch .env.local && pbpaste > .env.local && grs" # paste env variables
alias pei="pe && gplod && npm i && code ." # paste env variables and npm install
alias peli="pel && gplod && npm i && code ." # paste env variables and npm install
alias gei=" gplod && npm i && nrde && code ."
alias pec="mkdir certificate && cp ~/Desktop/certificate/* certificate && pei" # copy certificates
alias pretty="gl --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
 
# funny commands
alias dad="curl https://icanhazdadjoke.com/ && echo" # dad joke
alias wow="say you are awesome!"
alias sdc="say double combo!"
alias ssv="say supreme victory!"
alias ss="say solid!"
alias ssys="say sir yes sir!"
alias shh="say hey hey ho ho!"
alias sgg="say good game!"
alias sm="say its uh me mario!"
alias sgs="say get some!"
 
# brew commands
alias bs="brew services"
alias bsr="bs start redis"
alias bsl="bs list"
alias bss="bs stop"
alias bssr="bss redis"
alias bsrr="brew services restart redis"
 
# npm run commands
alias nrd="npm run dev && home"
alias nrde="npm run dev:gen-env"
alias lnrd="ENVIRONMENT=local npm run dev"
alias nrt="npm run test"
alias nrc="npm run coverage"
alias nrtw="npm run test --watch"
alias nrtwc="npm run test --watch --coverage"
alias nrs="npm run start" # start server
alias nrb="npm run build"
alias nrn="npm run nest:start:dev" # start nest server only
alias nrg="npm run graphql:generate-schema" # generate graphql schema
alias nrp="npm run prettier"
alias nrpf="npm run prettier:fix"
alias nrl="npm run lint"
alias nrlf="npm run lint:fix