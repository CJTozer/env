if [ ! -d ~/antigen ]
then
  echo --- Cloning antigen into ~/antigen ---
  git clone https://github.com/zsh-users/antigen.git ~/antigen
fi
source ~/antigen/antigen.zsh

antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle go
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
export BULLETTRAIN_PROMPT_SEPARATE_LINE=false
export BULLETTRAIN_PROMPT_ADD_NEWLINE=false
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Tell antigen that you're done.
antigen apply


# Alias
alias cdb='cd $CB_ROOT'

# FZF
if [ ! -f ~/.fzf.zsh ]
then
  echo --- Installing fzf ---
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi
source ~/.fzf.zsh

# Terminal type
export TERM="xterm-256color"

