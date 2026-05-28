#!/bin/bash

sed -i \
  -e "s/^DOTFILES_VERSION=.*/DOTFILES_VERSION=\"${CZ_PRE_NEW_VERSION}\"/" \
  -e "s/^DOTFILES_RELEASE_DATE=.*/DOTFILES_RELEASE_DATE=\"$(date +%Y-%m-%d)\"/" \
  dotfiles
git add dotfiles
