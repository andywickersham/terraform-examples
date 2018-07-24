#!/bin/bash

set -e

eval "$(jq -r '@sh "WORKSPACE=\(.workspace) PROJECTCODE=\(.projectcode) URL=\(.url)"')"

curl --header "querytext: $WORKSPACE-$PROJECTCODE" $URL