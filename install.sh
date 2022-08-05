#!/bin/sh
mkdir -p ~/.config/git/hooks
wget -p ~/.config/git/hooks https://raw.githubusercontent.com/myml/git-email-check/master/pre-commit
git config --global core.hooksPath ~/.config/git/hooks