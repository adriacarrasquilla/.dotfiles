" Float Term
nnoremap <silent> <leader>lg :FloatermNew --height=0.9 --width=0.9 --name=lazygit --autoclose=2 lazygit<CR>
nnoremap <silent> <leader>tt :FloatermNew --height=0.7 --width=0.7 --name=terminal --autoclose=2 zsh<CR>
nnoremap <silent> <leader>pd :FloatermNew --height=0.9 --width=0.9 --name=pudb --autoclose=2 pudb3 %<CR>
nnoremap <silent> <leader>tp :FloatermNew --name=terminal --autoclose=2 zsh --command "python % && read -n 1 -s"<CR>
nnoremap <silent> <leader><esc> <C-\><C-n>:FloatermHide!<CR>
