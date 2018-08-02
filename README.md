MyConfig
========

Vim, Git and Bash scripts configurations.

Git clone this repository into your Home directory.
```git
git clone git@github.com:waterwaves/MyConfig.git
```

# Vim
#### Step 1: Install Vundle

Vundle Github Link: https://github.com/gmarik/Vundle.vim
```git
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### Step 2: Add vim source `vimrc` to `~/.vimrc`
```bash
source ~/MyConfig/vimrc
```

# Shortcuts
#### Add `bashscripts` to `~/bash_profile`
```bash
if [ -f ~/MyConfig/bash_custom ]; then
  . ~/MyConfig/bash_custom
fi
```

#### Add `gitconfig` to `~/.gitconfig`
```
[user]
  name = Water Waves
  email = email@email.net
[include]
  path = ~/MyConfig/gitconfig
```

# Convenient tools
#### Install the_silver_searcher
```bash
brew install the_silver_searcher
```

#### Install Git Bash Autocomplete
Reference: [github link](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion)
```bash
brew install git bash-completion
```
