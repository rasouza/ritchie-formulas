#!/bin/bash

# shellcheck source=/dev/null
# . "$(dirname "$0")"/hello/hello.sh --source-only
#In sh for receive inputs of CLI use: $SAMPLE_TEXT, $SAMPLE_LIST and $SAMPLE_BOOL for this example

# runFormula "$SAMPLE_TEXT" "$SAMPLE_LIST" "$SAMPLE_BOOL"

curl -L https://istio.io/downloadIstio | sh -
mv istio-$VERSION/bin/istioctl /usr/local/bin
rm -rf istio-$VERSION