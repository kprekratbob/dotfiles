# Source Gitpod’s default .zshrc
if [ -f /home/gitpod/.zshrc ]; then
  source /home/gitpod/.zshrc
fi

ZSH_THEME="amuse"

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