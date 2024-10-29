# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"






alias cls="clear && printf '\e[3J'"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

alias bob="npm run start"
alias prebob="npm run prebob:darwin:linux"
alias test="NODE_OPTIONS=\"--max-old-space-size=10000\" nx test"

alias core="npm run core"
alias hiring="npm run hiring"

alias careers="subdomain=demostructionats npm run careers"
alias story="npm run storybook"
alias tools="npm run bob-tools"

alias e2elocal="BASE_URL=https://localhost.hibob.com:4200 COMPANY_EMAIL=krunoslav.prekrat+plwprod@hibob.io COMPANY_PASS=Plw12345 nx e2e"
alias e2estage="BASE_URL=https://app.stage.hibob.com COMPANY_EMAIL=krunoslav.prekrat+plwstage@hibob.io COMPANY_PASS=Plw12345 nx e2e"
alias e2erecreate="E2E_REGISTRATION_KEY=x8589S95548WRBGg8P4r9b7Kg7797VC npm run e2e-local recruitment-features-e2e -- --ui"

alias git-clean="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"