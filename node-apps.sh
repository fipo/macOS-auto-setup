#!/bin/bash
cat << EOS
macOS Auto Setup - Node Apps
EOS

echo "=== add node apps ==="
npm install -g npx
npm install -g create-react-app
npm install -g eslint
npm install -g firebase-tools
npm install -g flow-bin
npm install -g nodemon
npm install -g npm
npm install -g prettier
npm install -g serve
npm install -g tldr
echo "=== done ==="