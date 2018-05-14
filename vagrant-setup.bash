#!/bin/bash

set -euo pipefail

apt-get update

apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  git \
  screen \
  software-properties-common \
  tmux

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  test"

apt-get update

apt-get install -y docker-ce

usermod -a -G docker vagrant

curl -fsSL -o /tmp/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
install -m 0755 /tmp/kubectl /usr/local/bin/kubectl

echo "Setup finished successfully!"
