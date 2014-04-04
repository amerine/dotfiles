#use brew git github

## Install vim.
ok brew vim

destination push $HOME/code/amerine/dotfiles/vim/bundle

### Bundle Basics
ok github tpope/vim-pathogen
ok github tpope/vim-endwise
ok github tpope/vim-repeat
ok github tpope/vim-surround
ok github tpope/vim-ragtag
ok github tpope/vim-unimpaired
ok github tpope/vim-eunuch
ok github ervandew/supertab
ok github michaeljsmith/vim-indent-object
ok github Townk/vim-autoclose
ok github scrooloose/syntastic
ok github tpope/vim-commentary
ok github mattn/gist-vim
ok github vim-scripts/taglist.vim
ok github goldfeld/vim-seek
ok github tpope/vim-vinegar

### Git
ok github tpope/vim-git
ok github tpope/vim-fugitive
ok github mhinz/vim-signify

### Colors
ok github chriskempson/vim-tomorrow-theme
ok github vim-scripts/tango-morning.vim
ok github reedes/vim-colors-pencil

### Powerline
ok github Lokaltog/powerline

### Syntax & Language Specifics
ok github pangloss/vim-javascript
ok github tpope/vim-haml
ok github groenewege/vim-less
ok github leshill/vim-json
ok github tpope/vim-markdown
ok github cespare/vim-toml
ok github jnwhiteh/vim-golang
ok github kchmck/vim-coffee-script
ok github evanmiller/nginx-vim-syntax
ok github nono/vim-handlebars
ok github juvenn/mustache
ok github vim-ruby/vim-ruby
ok github tpope/vim-bundler
ok github tpope/vim-rake
ok github tpope/vim-rails

destination pop
