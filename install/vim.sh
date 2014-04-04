## Install vim.
brew vim

## Pathogen Bundles
[ -z $code ] && code=$HOME/code/amerine
set_dir $code/dotfiles/vim/bundle

### Bundle Basics
github tpope/vim-pathogen
github tpope/vim-endwise
github tpope/vim-repeat
github tpope/vim-surround
github tpope/vim-ragtag
github tpope/vim-unimpaired
github tpope/vim-eunuch
github ervandew/supertab
github michaeljsmith/vim-indent-object
github Townk/vim-autoclose
github scrooloose/syntastic
github tpope/vim-commentary
github mattn/gist-vim
github vim-scripts/taglist.vim
github goldfeld/vim-seek
github tpope/vim-vinegar

### Git
github tpope/vim-git
github tpope/vim-fugitive
github mhinz/vim-signify

### Colors
github chriskempson/vim-tomorrow-theme
github vim-scripts/tango-morning.vim
github reedes/vim-colors-pencil

### Powerline
github Lokaltog/powerline

### Syntax & Language Specifics
github pangloss/vim-javascript
github tpope/vim-haml
github groenewege/vim-less
github leshill/vim-json
github tpope/vim-markdown
github cespare/vim-toml
github jnwhiteh/vim-golang
github kchmck/vim-coffee-script
github evanmiller/nginx-vim-syntax
github nono/vim-handlebars
github juvenn/mustache
github vim-ruby/vim-ruby
github tpope/vim-bundler
github tpope/vim-rake
github tpope/vim-rails

unset_dir
