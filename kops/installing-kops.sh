#!/bin/bash
  sudo apt update
  sudo apt install wget -y
  sudo wget https://github.com/kubernetes/kops/releases/download/v1.16.1/kops-linux-amd64
  sudo chmod +x kops-linux-amd64
  sudo mv kops-linux-amd64 /usr/local/bin/kops
