# Install script, idk if this will work
ZSH_CUSTOM="$PWD/oh-my-zsh"

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    export RUNZSH="no"
    echo "Fetchig oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install vim-plug
if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    echo "Fetching vim-plug"
    curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install spaceship-prompt
if [ -z "$(ls -A $ZSH_CUSTOM/themes/spaceship-prompt)" ]; then
    echo "Fetching spaceship-prompt"
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# Link each rc file
SH_FILES=".zshrc .nvimrc"

for FILE in $SH_FILES; do
    if [[ -f "$HOME/$FILE" && ! -L "$HOME/$FILE" ]]; then
        echo "Moving regular file $FILE"
        mv "$HOME/$FILE" "$HOME/$FILE.old"
    fi
    if [ -L "$HOME/$FILE" ]; then
        echo "$FILE is linked to $(readlink -f "$HOME/$FILE")"
    else
        echo "Linking $FILE"
        ln -s "$PWD/$FILE" "$HOME/$FILE"
    fi
done

# Link nvim init file
if [ ! -e "$HOME/.config/nvim/init.vim" ]; then
    echo "Linking $HOME/.config/nvim/init.vim"
    mkdir -p $HOME/.config/nvim/
    ln -s $PWD/.nvimrc $HOME/.config/nvim/init.vim
fi
