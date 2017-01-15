export ZSH=/Users/Matthew/.oh-my-zsh

ZSH_THEME="sorin"

plugins=(bower brew bundler chucknorris cloudapp colorize common-aliases copydir copyfile docker encode64 extract frontend-search gem git git-extras git_remote_branch github heroku httpie jsontools npm nyan osx pip pj pod python rails rake-fast rvm singlechar sprunge sublime sudo transfer urltools wd web-search xcode)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.5/bin"
export PATH="$PATH:/Users/Matthew/.rvm/bin:/Users/Matthew/.rvm/gems/ruby-2.1.3/bin:/Users/Matthew/.rvm/gems/ruby-2.1.3@global/bin:/Users/Matthew/.rvm/rubies/ruby-2.1.3/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export PATH="$PATH:/Users/Matthew/.node/bin"
export PATH="$PATH:/Users/Matthew/Documents/adt-bundle-mac-x86_64-20140702/sdk/platform-tools"
export PATH="$PATH:/Users/Matthew/Dropbox/Development/osx/khd/bin:/Users/Matthew/Dropbox/Development/osx/kwm/bin:/Users/Matthew/.kwm/scripts"
export PATH="$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin"
export PATH="$PATH:/Users/Matthew/.miniconda2/bin"
export PATH="$PATH:/Users/Matthew/Dropbox/Development/osx/transmission-remote-cli"

export SSH_KEY_PATH="~/.ssh/id_rsa"
export GITHUB_USER="matthewdias"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='subl'
fi

BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

PROJECT_PATHS=(~/Dropbox/Development/osx ~/Dropbox/Development/ios ~/Dropbox/Development/web ~/Dropbox/Development/android ~/Dropbox/Development/chrome ~/Dropbox/Development/electron ~/Dropbox/Development/latertube, ~/Dropbox/Development/consume, ~/Dropbox/Development/freak, ~/Dropbox/Development/kitsu)

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222"
alias nwjs="/Applications/nwjs.app/Contents/MacOS/nwjs"
alias finder="open -R"
alias s="subl"
alias sn="subl -n"
alias dus="duf | sort -n"
alias sz="source ~/.zshrc"
alias d="dirs -v"
alias -g S="| subl -n"
alias mac="m"
trash() {
	mv $1 ~/.Trash/
}
v() {
	vmd $1 &
}
moe() {
	/Applications/Moeditor.app/Contents/MacOS/Moeditor $1 &
}
eval "$(hub alias -s)"
eval "$(thefuck --alias)"
