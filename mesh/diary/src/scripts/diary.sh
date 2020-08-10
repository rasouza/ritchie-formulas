#!/bin/bash
runDiary() {
    kustomize build . | kubectl apply -f -
}