call plug#begin("$VIMCONFIG/plugged")
" +---------+
" | General |
" +---------+

Plug 'tpope/vim-surround' " surrounding text objects with paranthesis, quotes, html tags...

Plug 'editorconfig/editorconfig-vim'

" +-----------+
" | Undo tree |
" +-----------+

Plug 'mbbill/undotree'
" Plug 'simnalamburt/vim-mundo' " Undo tree display

" +---------------------+
" | Syntax highlighting |
" +---------------------+

Plug 'PotatoesMaster/i3-vim-syntax' " i3 config
Plug 'chr4/nginx.vim' " nginx
Plug 'wgwoods/vim-systemd-syntax' " systemd
Plug 'cespare/vim-toml' " toml
Plug 'jparise/vim-graphql' " graphql

" +-----+
" | LSP |
" +-----+

Plug 'neovim/nvim-lspconfig'

" +-----+
" | FZF |
" +-----+

Plug 'junegunn/fzf.vim'

" +---------+
" | Writing |
" +---------+

Plug 'godlygeek/tabular' " Align stuff (useful for markdown tables for example)
Plug 'rhysd/vim-grammarous', { 'for': 'markdown' } " Show grammar mistakes
Plug 'reedes/vim-wordy' " Verify quality of writting (see :Wordy)

" +-----+
" | CSS |
" +-----+

Plug 'ap/vim-css-color' " Display the hexadecimal colors - useful for css and color config

" +-----+
" | CSV |
" +-----+

" Format CSV automatically
Plug 'chrisbra/csv.vim'

" +-----------+
" | VimScript |
" +-----------+

Plug 'tpope/vim-scriptease' " Debug vimscripts

" +------------+
" | Treesitter |
" +------------+
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'

" layout
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
call plug#end()
