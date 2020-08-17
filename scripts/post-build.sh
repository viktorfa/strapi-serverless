#!/bin/bash

echo "post-build.sh – moving assets of frontend build to dev/ folder."

mkdir $PWD/build/dev
find $PWD/build/ -type f -print0 | xargs -0 mv -t $PWD/build/dev
mv $PWD/build/dev/index.html $PWD/build
