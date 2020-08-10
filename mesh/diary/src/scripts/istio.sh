#!/bin/bash
runIstio() {
    kubectl create ns istio-system
    kubectl apply -f istio/kiali-secret.yaml
    istioctl install -f istio/operator.yaml
    [[ $1 == "yes" ]] && kubectl apply istio/gateway.yaml
}