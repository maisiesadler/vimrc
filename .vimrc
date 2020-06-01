noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap <Tab> <C-w>w

set number
set relativenumber

noremap ,<space> :%g/JsonPropertyName/d<CR> :%g/^\s*$/d<CR> :g/^#/d<CR> :%s/ {.*}//<CR> :%s/.* \(\w\+\)/\1/<CR> :set nonumber <CR> :set norelativenumber <CR>
