#!/bin/bash

set -e

cd "`dirname \"$0\"`"

replacement="s#$1#g"
echo "$replacement"

# replace recursively
# from https://stackoverflow.com/a/1583282
find extinctionrebellion.de -type f -print0 | xargs -0 sed -i "$replacement"
