#!/bin/bash

# shellcheck source=/dev/null
. "$(dirname "$0")"/scripts/clone.sh --source-only
. "$(dirname "$0")"/scripts/istio.sh --source-only
. "$(dirname "$0")"/scripts/diary.sh --source-only
. "$(dirname "$0")"/scripts/hosts.sh --source-only
#In sh for receive inputs of CLI use: $SAMPLE_TEXT, $SAMPLE_LIST and $SAMPLE_BOOL for this example

CMDS="kubectl istioctl kustomize minikube"
 
for i in $CMDS; do
	command -v $i >/dev/null && continue || { echo "$i command not found. Run \`rit mesh init\` first"; exit 1; }
done

runClone $INFRA_PATH
runIstio $TELEMETRY
runHosts $HOSTS
runDiary