let g:fzf_preview_window = 'right:60%'
let g:fzf_buffers_jump = 1

let g:fzf_action = {
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~30%' }

function DefaultSpec() 
    return {'options': ['--layout=reverse','--info=inline','--prompt=> ']}
endfunction

function DefaultSpecWithPreview() 
    return fzf#vim#with_preview({'options': ['--layout=reverse','--info=inline','--prompt=> ']})
endfunction

let g:which_key_map[' '][' '] = 'command'
noremap <silent> <leader><leader><leader> :call fzf#vim#commands(DefaultSpec(),0)<CR>

let g:which_key_map['b']['b'] = 'switch buffer'
noremap <silent> <leader>bb :call fzf#vim#buffers(DefaultSpecWithPreview(), 0)<cr>

let g:which_key_map['b']['/'] = 'match buffer line'
noremap <silent> <leader>b/ :call fzf#vim#lines('',DefaultSpec(), 0)<cr>

let g:which_key_map['c']['m'] = 'switch mark'
noremap <silent> <leader>cm :call fzf#vim#marks(DefaultSpec(),0)<cr>

let g:which_key_map['c']['/'] = 'match line'
noremap <silent> <leader>c/ :call fzf#vim#buffer_lines('',DefaultSpec(), 0)<cr>

let g:which_key_map['f']['f'] = 'find file'
noremap <silent> <leader>ff :call fzf#vim#files('',DefaultSpecWithPreview(),0)<cr>

let g:which_key_map['f']['r'] = 'recent file'
noremap <silent> <leader>fr :call fzf#vim#history(DefaultSpecWithPreview())<cr>

let g:which_key_map['w']['w'] = 'switch window'
noremap <silent> <leader>ww :call fzf#vim#windows(DefaultSpec(), 0)<cr>

let g:which_key_map['p']['f'] = 'find git file'
noremap <silent> <leader>pf :call fzf#vim#gitfiles('', DefaultSpecWithPreview(), 0)<cr>

let g:which_key_map['p']['s'] = 'git status'
noremap <silent> <leader>ps :call fzf#vim#gitfiles('?', DefaultSpecWithPreview(), 0)<cr>

let g:which_key_map['p']['/'] = 'global regular'
noremap <silent> <leader>p/ :call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(''), 1, DefaultSpecWithPreview(), 0)<cr>

let g:which_key_map['.']['c'] = 'switch color scheme'
noremap <silent> <leader>.c :call fzf#vim#colors(DefaultSpec(),0)<cr>

" command!      -bang -nargs=? -complete=dir Files       call fzf#vim#files(<q-args>, s:p(<bang>0), <bang>0)
" command!      -bang -nargs=? GitFiles                  call fzf#vim#gitfiles(<q-args>, <q-args> == "?" ? {} : s:p(<bang>0), <bang>0)
" command!      -bang -nargs=? GFiles                    call fzf#vim#gitfiles(<q-args>, <q-args> == "?" ? {'options': ['--prompt','> ']} : s:p(<bang>0), <bang>0)
" command! -bar -bang -nargs=? -complete=buffer Buffers  call fzf#vim#buffers(<q-args>, s:p(<bang>0, { "placeholder": "{1}", "options": ["-d", "\t"] }), <bang>0)
" command!      -bang -nargs=* Lines                     call fzf#vim#lines(<q-args>, <bang>0)
" command!      -bang -nargs=* BLines                    call fzf#vim#buffer_lines(<q-args>, <bang>0)
" command! -bar -bang Colors                             call fzf#vim#colors(<bang>0)
" command!      -bang -nargs=+ -complete=dir Locate      call fzf#vim#locate(<q-args>, s:p(<bang>0), <bang>0)
" command!      -bang -nargs=* Ag                        call fzf#vim#ag(<q-args>, s:p(<bang>0), <bang>0)
" command!      -bang -nargs=* Rg                        call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case -- ".shellescape(<q-args>), 1, s:p(<bang>0), <bang>0)
" command!      -bang -nargs=* Tags                      call fzf#vim#tags(<q-args>, <bang>0)
" command!      -bang -nargs=* BTags                     call fzf#vim#buffer_tags(<q-args>, s:p(<bang>0, { "placeholder": "{2}:{3}", "options": ["-d", "\t"] }), <bang>0)
" command! -bar -bang Snippets                           call fzf#vim#snippets(<bang>0)
" command! -bar -bang Commands                           call fzf#vim#commands(<bang>0)
" command! -bar -bang Marks                              call fzf#vim#marks(<bang>0)
" command! -bar -bang Helptags                           call fzf#vim#helptags(<bang>0)
" command! -bar -bang Windows                            call fzf#vim#windows(<bang>0)
" command! -bar -bang Commits                            call fzf#vim#commits(<bang>0)
" command! -bar -bang BCommits                           call fzf#vim#buffer_commits(<bang>0)
" command! -bar -bang Maps                               call fzf#vim#maps("n", <bang>0)
" command! -bar -bang Filetypes                          call fzf#vim#filetypes(<bang>0)
" command!      -bang -nargs=* History                   call s:history(<q-args>, s:p(<bang>0), <bang>0)

autocmd! FileType fzf set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
