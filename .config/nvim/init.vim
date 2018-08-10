 set runtimepath+=~/.vim_runtime                                                                                      
                                                                                                                      
 "Plugin section                                                                                                      
 call plug#begin('~/.vim/plugged')                                                                                    
 ""Deoplete                                                                                                           
 if has('nvim')                                                                                                       
   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }                                                      
 else                                                                                                                 
   Plug 'Shougo/deoplete.nvim'                                                                                        
   Plug 'roxma/nvim-yarp'                                                                                             
   Plug 'roxma/vim-hug-neovim-rpc'                                                                                    
 endif                                                                                                                
                                                                                                                      
 let g:deoplete#enable_at_startup = 1                                                                                 
                                                                                                                      
 "End plugin section                                                                                                  
 call plug#end()                                                                                                      
                                                                                                                      
 "Show number by pressing f3                                                                                          
 noremap <F3> :set invnumber<CR>                                                                                      
 inoremap <F3> <C-O>:set invnumber<CR>                                                                                
                                                                                                                      
 set clipboard+=unnamedplus                                                                                           
 set number                                                                                                           
 syntax on                                                                                                            
 set ignorecase                                                                                                       
                                                                                                                      
                                                                                                                      
 source ~/.vim_runtime/vimrcs/basic.vim                                                                               
 source ~/.vim_runtime/vimrcs/filetypes.vim                                                                           
 source ~/.vim_runtime/vimrcs/plugins_config.vim                                                                      
 source ~/.vim_runtime/vimrcs/extended.vim                                                                            
                                                                                                                      
 try                                                                                                                  
 source ~/.vim_runtime/my_configs.vim                                                                                 
 catch                                                                                                                
 endtry                                                                                                               
 
