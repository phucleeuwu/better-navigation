# ────────────────────────────────────────────────────────────
#  Aliases - Minimal Yet Powerful
# ────────────────────────────────────────────────────────────
setopt auto_cd

#  Navigation + Zoxide
alias cd="z"         # Zoxide  
alias -- -="cd -"      # Fast switch directories  
alias -g .2="cd ../.."
alias -g .3="cd ../../.."
alias -g .4="cd ../../../.."
alias -g .5="cd ../../../../.."

#  Command Enhancements
alias md='mkdir -pv'
alias rd='rmdir -I'
alias mkdir="mkdir -pv"  
# alias cat="bat"  # Modern `cat`
alias cp="cp -v"  
alias mv="mv -iv"  
alias rm="rm -I"  
alias lg="lazygit"  
alias lzd="lazydocker"  
alias cls="clear"  

#  Search Tools (fd + ripgrep)
alias fdf="fd --type=f --hidden"  # Find files  
alias fdd="fd --type=d --hidden"  # Find directories  
alias rgt="rg --type"  # search by file type, e.g., `rgt js "function"`  
