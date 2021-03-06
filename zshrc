# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras github sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# for tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/home/julian/.gem/ruby/2.4.0/bin:/home/julian/.gem/ruby/2.2.0/bin:$PATH
export PATH=$PATH:~/.node_modules/bin
export PATH=$PATH:/home/julian/.cargo/bin
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
source ~/.nvm/nvm.sh
# End of lines added by compinstall
alias ls='ls --color=auto'
alias jsw="jekyll serve -w"
alias gc="git commit"
alias gpo="git push origin"
alias gplo="git pull origin"
alias gch="git checkout"
alias gm="git merge"
alias firefox-docker="docker run --tty --interactive --rm -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/firefox"
alias firefox-audio="docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/shm:/dev/shm -v /etc/machine-id:/etc/machine-id -v /run/user/$UID/pulse:/run/user/$UID/pulse -v /var/lib/dbus:/var/lib/dbus -v ~/.pulse:/home/firefox/.pulse jsparber/firefox"
alias humblebundle="docker start humblebundle"
alias chromium-docker="docker run --tty --interactive --rm -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/chromium"
alias chrome-docker="docker run --tty --interactive --rm -i -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jsparber/chrome"
alias grep="grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn"
alias iceweasel-update="sudo cp ~/Projects/iceweasel-config/vendor.js /usr/lib/iceweasel/browser/defaults/preferences/vendor.js"
alias docker='nocorrect docker'
alias vim='nvim'
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Djdk.gtk.version=3'
export CLASSPATH=".:/usr/share/java/antlr-4.7.1-complete.jar:$CLASSPATH"
eval "$(grunt --completion=zsh)"
