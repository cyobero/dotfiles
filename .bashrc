# Path to your oh-my-bash installation.
export OSH=/home/czar/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

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

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
  progress
)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

# Aliases
alias spark-shell="$SPARK_HOME/bin/spark-shell"
alias spark-submit="$SPARK_HOME/bin/spark-submit"
alias alh="ls -alh"
alias lh="ls -lh"
alias hadoop="$HADOOP_HOME/bin/hadoop"
alias fpw="feh $HOME/Pictures/wallpapers"
alias o="xdg-open"
alias nv="nvim $HOME/.vimrc"
alias nb="nvim $HOME/.bashrc"
alias na="nvim $HOME/.config/alacritty/alacritty.yml"
alias ni="nvim $HOME/.config/i3/config"

export SPARK_HOME="/usr/local/spark"
export PATH="$PATH:SPARK_HOME/bin:$SPARK_HOME/sbin"

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export HADOOP_HOME="/usr/local/hadoop"
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

export AWS_ACCESS_KEY_ID=AKIAYF22LBTAWGBALGXW
export AWS_SECRET_ACCESS_KEY=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

export MYSQL_PASSWORD='Theworld#0'
export DJANGO_SECRET_KEY='@!2^r7pry39)59jeopgntyd!@$(2hk&s%vu)j#hqjgxbxtc1iq'

export QTDIR=$HOME/Qt5.12.10/5.12.10

export HIVE_HOME=/usr/local/hive
export PATH=$PATH:/usr/local/hive/bin

neofetch 

bind TAB:menu-complete
. "$HOME/.cargo/env"


export PGDATA=/var/lib/postgres/data

xset r rate 220 70

# For I-beam cursor
printf '\033[6 q\r'

export GITHUB_TOKEN=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

export QUANDL_API_KEY=t4gLtTYpDsVosz2pNH8n

export MARKETSTACK_ACCESS_KEY=0840124d6c00f2ad83ebf31dfdd1803d
export PATH=$PATH:/home/czar/.spicetify
export PATH=$HOME/.local/lib/emsdk/emsdk/upstream/emscripten:$HOME/.local/lib/emsdk/node/14.18.2_64bit/bin:$PATH
