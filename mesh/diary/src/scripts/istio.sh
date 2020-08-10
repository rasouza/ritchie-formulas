#!/bin/bash
runIstio() {
    if ! kubectl get ns istio-system &> /dev/null; then
        kubectl create ns istio-system
    fi
    
    kubectl apply -f istio/kiali-secret.yaml
    istioctl install -f istio/operator.yaml
    [[ $1 == "yes" ]] && kubectl apply istio/gateway.yaml
}