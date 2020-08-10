#!/bin/bash
runDiary() {
    kustomize build . | kubectl apply -f -
    [[ $1 == "yes" ]] && kustomize build argocd/apps | kubectl apply -f -
}