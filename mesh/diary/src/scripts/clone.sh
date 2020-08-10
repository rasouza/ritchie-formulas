#!/bin/bash
runClone() {
  echo "Cloning repo..."
  git clone git@github.com:rasouza/diary-infra.git $INFRA_PATH
  cd $INFRA_PATH
}