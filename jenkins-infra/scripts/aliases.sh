
# # SMEE_URL (webhook)
# export SMEE_URL="https://smee.io/WOi7gUgFDGQcVAQ"

# alias srcrc="source ~/.bashrc"
# alias tdir="cd ~/simulation_ws/src/ros1_ci"

# # git
# cleanpull() {
#     git reset --hard HEAD
#     git clean -fd
#     git pull
# }

# dkradd() {
#     newgrp docker
# }

# killcont() {
#     kill $(cat ~/webpage_ws/jenkins/jenkins.pid)
# }

# tbld() {
#     cd  ~/simulation_ws/src/ros1_ci
#     docker build -t tortoisebot-noetic-gazebo:latest .
# }

# startjenkins() {
#     cd ~/simulation_ws/src/ros1_ci
#     bash jenkins-infra/scripts/jenkins_bootstrap.sh
# }

# installplugins() {
#     cd ~/simulation_ws/src/ros1_ci
#     bash jenkins-infra/scripts/install_plugins.sh
# }