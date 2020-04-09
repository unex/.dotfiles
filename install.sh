# Install script, idk if this will work
ZSH_CUSTOM="$PWD/oh-my-zsh"

echo "Fetchig oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Fetching vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "Fetching spaceship-prompt"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

mkdir $HOME/.config/nvim/

ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.nvimrc $HOME/.nvimrc
ln -s $PWD/.nvimrc $HOME/.config/nvim/init.vim
ln -s $PWD/.nvim $HOME/.nvim
