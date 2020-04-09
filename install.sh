# Install script, idk if this will work

echo "Fetchig oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Fetching vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.nvimrc $HOME/.nvimrc
ln -s $PWD/.nvimrc $HOME/.config/nvim/init.vim
ln -s $PWD/.nvim $HOME/.nvim
