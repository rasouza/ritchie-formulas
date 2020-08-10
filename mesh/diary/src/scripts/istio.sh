#!/bin/bash
runIstio() {
    if [ $TELEMETRY = "yes" ]
    then
        kubectl apply istio/gateway.yaml
    fi

    kubectl apply -f istio/kiali-secret.yaml
    istioctl install -f istio/operator.yaml
}