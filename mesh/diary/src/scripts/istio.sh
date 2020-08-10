#!/bin/bash
runIstio() {
    if ! command -v  kubectl &> /dev/null
    then
        echo "kubectl is not installed. Refer to https://kubernetes.io/docs/tasks/tools/install-kubectl/"
        exit 1
    fi
    if ! command -v istioctl &> /dev/null
    then
        echo "istioctl is not installed. Run `rit mesh istio` to install"
        exit 1
    fi

    if $TELEMETRY = "yes"
    then
        kubectl apply istio/gateway.yaml
    fi

    kubectl apply -f istio/kiali-secret.yaml
    istioctl install -f istio/operator.yaml
}