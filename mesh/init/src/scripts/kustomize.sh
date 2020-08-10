#!/bin/bash
runKustomize() {
    if [$1 = "yes" ]; then
        echo "Installing Kustomize..."
        curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
    else
        echo "Skipping Kustomize..."
    fi
}