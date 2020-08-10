#!/bin/bash

# shellcheck source=/dev/null
. "$(dirname "$0")"/scripts/clone.sh --source-only
. "$(dirname "$0")"/scripts/istio.sh --source-only
. "$(dirname "$0")"/scripts/diary.sh --source-only
#In sh for receive inputs of CLI use: $SAMPLE_TEXT, $SAMPLE_LIST and $SAMPLE_BOOL for this example

runClone $INFRA_PATH
runIstio $TELEMETRY
runDiary
