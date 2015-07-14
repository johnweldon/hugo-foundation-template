#!/bin/bash

HN=${1:-example.com}
CMD="s/##HOSTNAME##/$HN/g"
grep -rl '##HOSTNAME##' --exclude replace.sh | xargs sed -i $CMD
