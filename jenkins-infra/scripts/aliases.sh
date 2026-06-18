
# SMEE_URL (webhook)
export SMEE_URL="https://smee.io/WOi7gUgFDGQcVAQ"

alias srcrc="source ~/.bashrc"

# git
cleanpull() {
    git reset --hard HEAD
    git clean -fd
    git pull
}

# newgrp docker