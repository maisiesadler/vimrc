noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap <Tab> <C-w>w

set number
set relativenumber

func! GetPropertyFileNames()
    if search('^\s*$', 'n') != 0
        exec '%g/^\s*$/d'
    endif

    if search('JsonPropertyName', 'n') != 0
        exec '%g/JsonPropertyName/d'
    endif

    if search('^#', 'n') != 0
        exec '%g/^#/d'
    endif
    
    if search('^\s*//', 'n') != 0
        exec '%g/^\s*\/\//d'
    endif

    exec '%s/ {.*}//'
    exec '%s/.* \(\w\+\)/\1/'
    
    set nonumber
    set norelativenumber
endfunc

noremap ,<space> :call GetPropertyFileNames()<CR>
