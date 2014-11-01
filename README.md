MyConfig
========

Vim and Bash scripts configurations.

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

#### Step 2: Add vim source `vimrc` to .vimrc in the home directory
```bash
source ~/MyConfig/vimrc
```
#### Step 3: Add `bashscripts source` to .bash_profile in the home directory
```bash
if [ -f ~/MyConfig/.bash_custom ]; then                                                  
  . ~/MyConfig/.bash_custom
fi
```
