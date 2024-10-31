
ZSH_THEME="jonathan"
source $ZSH/oh-my-zsh.sh

alias cls="clear && printf '\e[3J'"

alias bob="npm run start"
alias core="npm run core"
alias hiring="npm run hiring"
alias careers="subdomain=demostructionats npm run careers"

alias story="npm run storybook"
alias tools="npm run bob-tools"
alias test="NODE_OPTIONS=\"--max-old-space-size=10000\" nx test"

alias e2elocal="BASE_URL=https://localhost.hibob.com:4200 COMPANY_EMAIL=krunoslav.prekrat+plwprod@hibob.io COMPANY_PASS=Plw12345 nx e2e"
alias e2estage="BASE_URL=https://app.stage.hibob.com COMPANY_EMAIL=krunoslav.prekrat+plwstage@hibob.io COMPANY_PASS=Plw12345 nx e2e"
alias e2erecreate="E2E_REGISTRATION_KEY=x8589S95548WRBGg8P4r9b7Kg7797VC npm run e2e-local recruitment-features-e2e -- --ui"

alias git-clean="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"

typeset -A alias_array
alias_array=(
  "gst" "git status" 
  "gaa" "git add ." 
  "gcm" "git commit -m " 
  "gcma" "git commit -a -m "
  "gpsh" "git push"
  "gfm" "git fetch origin master:master"
  "grm" "git rebase master"
  "grom" "git rebase --onto master "
)

# Initialize an empty string variable
result=""

# Loop through the array and append each value to the string
for k in "${(@k)alias_array}"; do
  result+="  %F{yellow}$k%f -> %F{red}$alias_array[$k]%f\n"
  alias $k=$alias_array[$k]
done

# Trim any trailing whitespace
result="${result%"${result##*[![:space:]]}"}"
title="\-\- %F{blue}GIT ALIASES%f \-\-"
alias galias="print -P '$title\n$result';"