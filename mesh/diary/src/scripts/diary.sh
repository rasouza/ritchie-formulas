#!/bin/bash
runDiary() {
    if ! command -v kustomize &> /dev/null
    then
        echo "kustomize is not installed. Refer to https://kubernetes-sigs.github.io/kustomize/installation/"
        exit 1
    fi

    kustomize build .. | kubectl apply -f -
}