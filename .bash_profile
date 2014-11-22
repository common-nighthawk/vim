
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:/usr/local/smlnj/bin"

function gmail {
  open 'https://mail.google.com/mail/u/0/#inbox'
}

function goog {
  local IFS='+'
  local query="$*"
  open "https://www.google.com/#q=${query}"
}

PS1="\e[00;34m\h:\W \u\$ \e[00m"
