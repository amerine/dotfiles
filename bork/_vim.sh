## Install vim.
ok brew vim

[ -z $code ] && dotfiles=$HOME/src/github.com/amerine/dotfiles
ok directory $dotfiles/configs/vim/bundle

[ -z $bundle ] && bundle=$dotfiles/configs/vim/bundle

### Bundle Basics
ok github $bundle/vim-pathogen tpope/vim-pathogen
ok github $bundle/vim-repeat tpope/vim-repeat

# FS Helpers
ok github $bundle/vim-eunuch tpope/vim-eunuch

# Text
ok github $bundle/vim-commentary tpope/vim-commentary
ok github $bundle/vim-abolish tpope/vim-abolish
ok github $bundle/vim-characterize tpope/vim-characterize

# Insert
ok github $bundle/vim-endwise tpope/vim-endwise
ok github $bundle/vim-autoclose Townk/vim-autoclose
ok github $bundle/supertab ervandew/supertab
ok github $bundle/vim-surround tpope/vim-surround

# text-objects
ok github $bundle/vim-indent-object michaeljsmith/vim-indent-object
ok github $bundle/wildfire.vim gcmt/wildfire.vim
ok github $bundle/vim-jdaddy tpope/vim-jdaddy

# nav
ok github $bundle/vim-vinegar tpope/vim-vinegar

# stuff
ok github $bundle/vim-unimpaired tpope/vim-unimpaired
ok github $bundle/syntastic scrooloose/syntastic
ok github $bundle/gist-vim mattn/gist-vim
ok github $bundle/taglist.vim vim-scripts/taglist.vim
ok github $bundle/vim-seek goldfeld/vim-seek

### Git
ok github $bundle/vim-git tpope/vim-git
ok github $bundle/vim-fugitive tpope/vim-fugitive
ok github $bundle/vim-signify mhinz/vim-signify

### Colors
ok github $bundle/vim-tomorrow-theme chriskempson/vim-tomorrow-theme
ok github $bundle/tango-morning.vim vim-scripts/tango-morning.vim
ok github $bundle/vim-colors-pencil reedes/vim-colors-pencil

#### ruby/rails
ok github $bundle/vim-ruby vim-ruby/vim-ruby
ok github $bundle/vim-rake tpope/vim-rake
ok github $bundle/vim-rails tpope/vim-rails