#!/bin/bash

# shellcheck source=/dev/null
. "$(dirname "$0")"/scripts/clone.sh --source-only
. "$(dirname "$0")"/scripts/istio.sh --source-only
. "$(dirname "$0")"/scripts/diary.sh --source-only
#In sh for receive inputs of CLI use: $SAMPLE_TEXT, $SAMPLE_LIST and $SAMPLE_BOOL for this example

if ! command -v kubectl &> /dev/null || ! command -v kustomize &> /dev/null || ! command -v istioctl &> /dev/null || command -v minikube &> /dev/null; then
    echo "There're some packages missing. Run first `rit mesh init`"
    exit 1
fi

runClone $INFRA_PATH
runIstio $TELEMETRY
runDiary
