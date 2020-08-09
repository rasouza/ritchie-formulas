#!/bin/bash

# shellcheck source=/dev/null
. "$(dirname "$0")"/brew/brew.sh --source-only
. "$(dirname "$0")"/terminal/terminal.sh --source-only
#In sh for receive inputs of CLI use: $SAMPLE_TEXT, $SAMPLE_LIST and $SAMPLE_BOOL for this example

runBrew
runTerminal

echo "Don't forget to import ~/profile.json to iTerm2 profiles"