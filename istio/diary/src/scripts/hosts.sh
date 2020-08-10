#!/bin/bash
runHosts() {
    if [[ $1 == "yes" ]]; then
        echo "192.168.64.100   grafana.localhost" | sudo tee -a /etc/hosts
        echo "192.168.64.100   kiali.localhost" | sudo tee -a /etc/hosts
        echo "192.168.64.100   prometheus.localhost" | sudo tee -a /etc/hosts
        echo "192.168.64.100   jaeger.localhost" | sudo tee -a /etc/hosts
        echo "192.168.64.100   argocd.localhost" | sudo tee -a /etc/hosts
    fi
}