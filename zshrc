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

# https://stackoverflow.com/questions/57700953/how-can-i-disable-git-checkout-in-git-2-23/57702206#57702206
git () {
    if [ "$1" = "checkout" ]
    then
        echo "Don't use checkout; use switch or restore." >&2
        return 1
    else
        command git "$@"
    fi
}

alias zaleznosciModulu='../gradlew :$(pwd | grep -o "[^/]*$"):dependencies --configuration implementation'
alias zaleznosciTestoweModulu='../gradlew :$(pwd | grep -o "[^/]*$"):dependencies --configuration testImplementation'
alias otwartePorty='netstat -ap tcp | grep -i "listen"'
alias otwartePorty2='lsof -PiTCP -sTCP:LISTEN'
alias ubicPostgres='killall postgres'
alias coTakGlosno='top -u'
alias szukajWPlikach='grep -rnw . -e $1'
alias zamienWPlikach='find . -type f -print0 | xargs -0 sed -i "" "s/$1/$2/g"'
alias usunLockfile='git checkout -- "*.lockfile"'
alias usunDsStore='find . -name ".DS_Store" -exec rm {} \;'
alias simpleHttpServer='python -m SimpleHTTPServer 8000'
alias fastBuild='./gradlew build -x test -x integrationTest -x checkstyleMain -x testUI -x validateUI -x javadoc'
alias usunFolderOut='find . -name "out" -not -path "*/node_modules/*" -exec rm -rf {} \;'
alias searchInGit="git log --pretty=short --raw  -S$1"
alias gitRoot='cd `git rev-parse --show-cdup`'
alias gitRemoveMerged='git branch --merged | grep -v master | xargs git branch -d'
alias dockerKillAll='docker kill $(docker ps -a -q)'
alias dockerRemoveContainers='docker container rm -fv $(docker container ls -aq) || echo "No containers to remove"'
alias dockerSystemPruneVolumesAndAll='docker system prune -a --volumes -f'
alias killDns='dscacheutil -flushcache & sudo killall -HUP mDNSResponder'
alias gitOldBranches='git for-each-ref --sort=-committerdate --format="%(color:cyan)%(authordate:relative)   %(color:red)%(authorname)   %(color:white)%(color:bold)%(refname:short)" refs/remotes'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias k='kubectl'
alias kns='kubens'
alias kDeletePVC='kubectl delete pvc --all'
alias kDeleteAllPods='kubectl delete $(k get pods -o name)'

# https://stackoverflow.com/questions/19305291/remnant-characters-when-tab-completing-with-zsh
export LC_ALL="en_US.UTF-8"