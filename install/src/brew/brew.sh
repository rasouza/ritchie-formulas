#!/bin/sh
runBrew() {
  echo "Installing Homebrew..."
  if [ $HOMEBREW = "true" ]
  then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  fi

  if command -v brew &> /dev/null
  then
    runBundle
  fi
}

runBundle() {
  echo "Installing Brewfile packages..."
  curl -s https://gist.githubusercontent.com/rasouza/f307c84fc29b6824e58d725349e5db2b/raw/bf11a68113a51d4c06422026ed0f39cbd1a65dfa/Brewfile > Brewfile
  brew bundle
  rm Brewfile
}
