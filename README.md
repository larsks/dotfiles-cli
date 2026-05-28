# dotfiles

The `dotfiles` script is primarily a wrapper around:

```
git --git-dir $HOME/dotfiles --work-tree $HOME
```

It allows you to manage dotfiles in a git repository in a way that doesn't place a `.git` directory in your home directory.

