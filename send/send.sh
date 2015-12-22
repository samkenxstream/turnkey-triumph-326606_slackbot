#!/bin/bash

set -e -u -o pipefail # Fail on error

# Outputs to slack if you have slackbot installed and SLACK_TOKEN and
# SLACK_CHANNEL set, otherwise it does nothing (errors are ignored on purpose).

sender="$GOPATH/src/github.com/keybase/slackbot/send/main.go"

echo "$@"
if [ -f $sender ]; then
  go run $sender -i=1 "$@"
fi
