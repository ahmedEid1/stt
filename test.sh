#!/bin/bash

set -xe

THIS=$(dirname "$0")

pushd ${THIS}
  source ../tests.sh

  npm install $(get_npm_package_url)
  npm install

  ln -s $HOME/STT/models coqui-stt-models

  yarn run test:client
  yarn run test:server

popd
