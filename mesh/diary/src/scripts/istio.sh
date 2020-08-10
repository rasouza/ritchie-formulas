#!/bin/bash
runIstio() {
    [[ $TELEMETRY == "yes" ]] && kubectl apply istio/gateway.yaml
    kubectl apply -f istio/kiali-secret.yaml
    istioctl install -f istio/operator.yaml
}