#!/bin/bash
runMinikube() {
  if [[ $1 == "yes" ]]; then
    echo "Installing Minikube..."

    if [[ "$OSTYPE" == linux* ]]; then
      curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
      sudo install minikube-linux-amd64 /usr/local/bin/minikube
    elif [[ "$OSTYPE" == darwin* ]]; then
      brew install minikube
    else
      choco install minikube
    fi
  else
    echo "Skipping Minikube installation..."
  fi
}