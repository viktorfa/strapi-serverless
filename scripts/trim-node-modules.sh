#!/bin/bash

echo "trim-node-modules.sh"

du -hs node_modules/

#node-prune # https://github.com/tj/node-prune
find $PWD/node_modules -maxdepth 1 -type d -name "*react*" -exec rm -rf {} +
find $PWD/node_modules -maxdepth 1 -type d -name "locale-data" -exec rm -rf {} +
find $PWD/node_modules -maxdepth 1 -type d -name "*webpack*" -exec rm -rf {} +
find $PWD/node_modules -maxdepth 1 -type d -name "*proptypes*" -exec rm -rf {} +
find $PWD/node_modules -type d -name "*jquery*" -exec rm -rf {} +
find $PWD/node_modules -type f -name "*.css" -exec rm -rf {} +
find $PWD/node_modules -type f -name "*.jsx" -exec rm -rf {} +
#find $PWD/node_modules -type f -name "*.html" -exec rm -rf {} +
rm -rf $PWD/node_modules/font-awesome/ $PWD/node_modules/styled-components/ $PWD/node_modules/rxjs/ $PWD/node_modules/@formatjs/ $PWD/node_modules/codemirror/ $PWD/node_modules/core-js/ $PWD/node_modules/draft-js/ $PWD/node_modules/popper.js/
rm -rf $PWD/node_modules/@sentry/ $PWD/node_modules/bootstrap/ $PWD/node_modules/@buffetjs/ $PWD/node_modules/highlight.js/ $PWD/node_modules/@fortawesome/
rm -rf $PWD/node_modules/@emotion/ $PWD/node_modules/caniuse-lite/ $PWD/node_modules/babel-plugin-styled-components/
rm -rf $PWD/node_modules/aws-sdk

du -hs node_modules/
