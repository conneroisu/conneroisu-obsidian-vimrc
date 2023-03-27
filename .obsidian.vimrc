" Obsidian Vimrc for Conner Ohnesorge

" Surround text with triple quotes making codeblock 
exmap surround_codeblock surround ``` ```
exmap surround_wikilink surround [[ ]]
exmap surround_centered surround <center> </center>

" map jump anywhere command
exmap jump obcommand mrj-jump-to-link:activate-jump-to-anywhere
" map jump anywhere command to ctrl + f
imap jj :jump


" exmapping for centered math mathjax
exmap surround_mathjax surround $$ $$
" nmap j gj 
" nmap k gk 

" Map Shift + h to beginning of the line 
" Map Shift + l to the end of the line
nmap H ^ 
nmap L $

" yank to the system clipboard 
set clipboard=unnamed 

"Emulate folding within obsidian 
exmap togglefold obcommand editor:toggle-fold 
nmap zo :togglefold
" Exit insert mode with jk
imap jk <Esc>
" Exit insert mode with kj
imap kj <Esc>
" map ff to surround text with triple backticks
map ff :surround_codeblock
map mm :surround_mathjax
" map ctrl + w to surround current line with wikilink for each line
map <C-w> :surround_wikilink
