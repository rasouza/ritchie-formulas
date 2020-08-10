#!/bin/bash
runMinikube() {
  if [ $1 = "yes" ]; then
    echo "Installing Minikube..."
    if [ $(uname -s) = "Darwin" ]
    then
      brew install minikube
    elif [ $(uname -s) = "Linux" ]
      MINIKUBE_URL="https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64" 
    else
      choco install minikube
    fi
  else
    echo "Skipping Minikube installation..."
  fi
}