# ────────────────────────────────────────────────────────────
#  Aliases - Minimal Yet Powerful
# ────────────────────────────────────────────────────────────

#  Navigation + Zoxide
alias cd="z"         # Zoxide  
alias z="z -"      # Fast switch directories  
alias j="zi"
alias ..="z .."
alias .2="z ../.."
alias .3="z ../../.."
alias .4="z ../../../.."
alias .5="z ../../../../.."

#  Command Enhancements
alias mkdir="mkdir -pv"  
# alias cat="bat"  # Modern `cat`
alias cp="cp -iv"  
alias mv="mv -iv"  
alias rm="rm -I"  
alias lg="lazygit"  
alias lzd="lazydocker"  
alias cls="clear"  

#  Search Tools (fd + ripgrep)
alias fdf="fd --type=f --hidden"  # Find files  
alias fdd="fd --type=d --hidden"  # Find directories  
alias rgt="rg --type"  # search by file type, e.g., `rgt js "function"`  
