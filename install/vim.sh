## Install vim.
ok brew vim

[ -z $code ] && code=$HOME/code/amerine
ok directory $code/dotfiles/configs/vim/bundle
destination $code/dotfiles/configs/vim/bundle

### Bundle Basics
ok github tpope/vim-pathogen
ok github tpope/vim-repeat

# FS Helpers
ok github tpope/vim-eunuch

# Text
ok github tpope/vim-commentary
ok github tpope/vim-abolish
ok github tpope/vim-characterize

# Insert
ok github tpope/vim-endwise
ok github Townk/vim-autoclose
ok github tpope/vim-surround
ok github Valloric/YouCompleteMe
ok github SirVer/ultisnips

# text-objects
ok github michaeljsmith/vim-indent-object
ok github gcmt/wildfire.vim
ok github tpope/vim-jdaddy

# nav
ok github tpope/vim-vinegar

ok github tpope/vim-unimpaired
ok github scrooloose/syntastic
ok github mattn/gist-vim
ok github goldfeld/vim-seek
ok github majutsushi/tagbar

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

#### markup & templates
ok github tpope/vim-ragtag
ok github juvenn/mustache
ok github tpope/vim-haml
ok github tpope/vim-markdown
ok github nono/vim-handlebars
ok github cespare/vim-toml
ok github Glench/Vim-Jinja2-Syntax
ok github digitaltoad/vim-jade

#### javascript/json
ok github pangloss/vim-javascript
ok github leshill/vim-json
ok github kchmck/vim-coffee-script

#### css
ok github groenewege/vim-less

#### go
ok github fatih/vim-go

#### ruby/rails
ok github vim-ruby/vim-ruby
ok github tpope/vim-bundler
ok github tpope/vim-rake
ok github tpope/vim-rails

#### misc
ok github ekalinin/Dockerfile.vim
ok github exu/pgsql.vim
