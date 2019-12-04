
# ZSH plugins
plugins=(
  git
  bower
  brew
  cp
  mvn
  gradle
  node
  npm
  osx
  sbt
  scala
  sudo
  systemd
  terminalapp
  vagrant
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
alias usunPlikiTomcata='rm -rf ~/apache-tomcat-8.5.28/webapps/*; rm -rf ~/apache-tomcat-8.5.28/temp/*; rm -rf ~/Library/Caches/IntelliJIdea2019.1/tomcat/*'
alias searchInGit="git log --pretty=short --raw  -S$1"
alias gitRoot="cd (git rev-parse --show-cdup)"
alias dockerKillAll='docker kill $(docker ps -q)'
alias killDns='dscacheutil -flushcache & sudo killall -HUP mDNSResponder'
alias gitOldBranches="git for-each-ref --sort=-committerdate --format='%(color:cyan)%(authordate:relative)   %(color:red)%(authorname)   %(color:white)%(color:bold)%(refname:short)' refs/remotes"
