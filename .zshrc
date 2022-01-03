alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Docker aliases
alias npm='docker run --rm -it -p 8080:8080 -v `pwd`:/app -w /app node:16-alpine npm '
