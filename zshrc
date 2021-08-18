# Install first and then copy to ~/.zshrc
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_THEME="robbyrussell"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ZSH plugins
plugins=(
    asdf
    aws
    brew
    cp
    docker
    docker-compose
    git
    helm
    gcloud
    gradle
    kubectl
    mvn
    node
    npm
    osx
    postgres
    sbt
    scala
    sudo
    systemd
    vagrant
    vscode
    # zsh-autosuggestions
)

alias zaleznosciModulu="../gradlew :$(pwd | grep -o '[^/]*$'):dependencies --configuration compile"
alias zaleznosciTestoweModulu="../gradlew :$(pwd | grep -o '[^/]*$'):dependencies --configuration testCompile"
alias otwartePorty='netstat -ap tcp | grep -i "listen"'
alias otwartePorty2='lsof -PiTCP -sTCP:LISTEN'
alias ubicPostgres="killall postgres"
alias coTakGlosno="top -u"
alias szukajWPlikach="grep -rnw . -e $1"
alias usunLockfile='git checkout -- "*.lockfile"'
alias simpleHttpServer='python -m SimpleHTTPServer 8000'
alias fastBuild='./gradlew build -x test -x integrationTest -x checkstyleMain -x testUI -x validateUI -x javadoc'
alias usunFolderOut='find . -name "out" -not -path "*/node_modules/*" -exec rm -rf {} \;'
alias searchInGit="git log --pretty=short --raw  -S$1"
alias gitRoot="cd `git rev-parse --show-cdup`"
alias gitRemoveMerged='git branch --merged | grep -v master | xargs git branch -d'
alias dockerKillAll='docker kill $(docker ps -a -q)'
alias dockerRemoveContainers='docker container rm -fv $(docker container ls -aq) || echo "No containers to remove"'
alias killDns='dscacheutil -flushcache & sudo killall -HUP mDNSResponder'
alias gitOldBranches="git for-each-ref --sort=-committerdate --format='%(color:cyan)%(authordate:relative)   %(color:red)%(authorname)   %(color:white)%(color:bold)%(refname:short)' refs/remotes"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias k='kubectl'
alias kns='kubens'
alias kDeletePVC="kubectl delete pvc --all"
alias kDeleteAllPods="kubectl delete $(k get pods -o name)"

# https://stackoverflow.com/questions/19305291/remnant-characters-when-tab-completing-with-zsh
export LC_ALL="en_US.UTF-8"