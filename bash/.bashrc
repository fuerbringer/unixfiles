set -o vi

# For disabling git authentication GUI
# unset SSH_ASKPASS

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/sev/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/sev/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/sev/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/sev/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
