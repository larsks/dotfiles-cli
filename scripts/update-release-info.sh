#!/bin/bash

cid=$(git rev-parse --short=10 HEAD || echo unknown)

sed -i \
  -e "s/^DOTFILES_VERSION=.*/DOTFILES_VERSION=\"${CZ_PRE_NEW_VERSION}\"/" \
  -e "s/^DOTFILES_RELEASE_DATE=.*/DOTFILES_RELEASE_DATE=\"$(date +%Y-%m-%d)\"/" \
  -e "s/^DOTFILES_COMMIT=.*/DOTFILES_COMMIT=\"${cid}\"/" \
  dotfiles
git add dotfiles
