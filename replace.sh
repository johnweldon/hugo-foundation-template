#!/bin/bash

HN=${1:-example.com}
SED_HN="s/##HOSTNAME##/$HN/g"
grep -rl '##HOSTNAME##' --exclude replace.sh | xargs sed -i $SED_HN

TAG=${2:-"MISSING-TAG"}
SED_TAG="s/##GOOGLE_TAG##/$TAG/g"
grep -rl '##GOOGLE_TAG##' --exclude replace.sh | xargs sed -i $SED_TAG
