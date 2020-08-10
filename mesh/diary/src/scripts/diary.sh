#!/bin/bash
runDiary() {
    pwd
    kustomize build . | kubectl apply -f -
}