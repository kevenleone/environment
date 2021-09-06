# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/keven/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# TOMCAT
export JPDA_ADDRESS=8000
export JPDA_TRANSPORT=dt_socket

# Java
export ANT_OPTS="-Xmx10240m"
export GRADLE_OPTS="-Xmx10240m"
# export JAVA_OPTS="-Xmx4096m -Xms1024m -XX:PermSize=512m"
# export JAVA_OPTS="-Xmx4096m -Xms1024m -XX:MaxPermSize=512m"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home"
export PATH="$PATH:$HOME/Library/PackageManager/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
        git
        zsh-z
        zsh-autosuggestions
        zsh-completions
)

LIFERAY_WORKDIR="$HOME/Documents/projects/Liferay"
TOMCAT_BUNDLE_FOLDER="$LIFERAY_WORKDIR/bundles/tomcat-9.0.43"

fpath=($ZSH/functions $ZSH/completions $fpath)

autoload -U compaudit compinit

compinit -i

source $ZSH/oh-my-zsh.sh

alias ys="yarn start"
alias yf="yarn format"
alias yt="yarn test"
alias killj="ps ax | grep java | grep -v 'grep' | cut -d '?' -f1 | xargs kill -9"
alias gwd="gw deploy -a -Pnodejs.node.env=development -at"
alias gwcd="gw clean deploy -a -Pnodejs.node.env=development"
alias gww="gw deployFast -at"
alias gwf="gw formatSource"
alias gcm="git checkout master"
alias clean-tags="git tag -l | xargs git tag -d"
alias ytc="/Users/keven/scripts/coveralls.sh"
alias poshi="./Users/keven/scripts/poshi.sh"
alias gsync='git pull --rebase upstream $(current_branch) && git push -f origin $(current_branch)'
alias deploy="yf && gwcd"
alias gw="node ~/scripts/gradlew.js"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ocov="open ./build/coverage/lcov-report/index.html"
alias killj="ps ax | grep java | grep -v 'grep' | cut -d '?' -f1 | kill -9"
alias gt="/Users/keven/Documents/projects/Temp/gh-github/dist/index.js"

alias tomcat_run="$TOMCAT_BUNDLE_FOLDER/bin/catalina.sh run"
alias tomcat_stop="$TOMCAT_BUNDLE_FOLDER/bin/catalina.sh stop"

IJ_CLONE_PATH="$LIFERAY_WORKDIR/liferay-intellij"

ij() {
        ${IJ_CLONE_PATH}/intellij "$@"
}
alias gh='/Users/keven/Documents/projects/Temp/gh-github/dist/index.js'
alias keven='/Users/keven/Documents/projects/Temp/dist/index.js'