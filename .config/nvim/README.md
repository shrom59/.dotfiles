You have to start with this : 

mkdir ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

Then

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

For plugin : 

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ 
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

After that you can alter the .vimrc with this config file 
