#!/bin/bash
runClone() {
  eval INFRA_PATH=$INFRA_PATH
  mkdir -p $INFRA_PATH
  cd $INFRA_PATH
  if [[ ! -d .git ]]; then
    echo "Cloning repo..."
    git clone git@github.com:rasouza/diary-infra.git .
  else
    echo "Repo already exists. Skipping cloning..."
  fi
}