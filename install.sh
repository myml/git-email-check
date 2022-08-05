#!/bin/sh -x
mkdir -p ~/.config/git/hooks
wget -N -P ~/.config/git/hooks https://raw.githubusercontent.com/myml/git-email-check/master/pre-commit
chmod +x ~/.config/git/hooks/pre-commit
git config --global core.hooksPath ~/.config/git/hooks
