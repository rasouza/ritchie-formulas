#!/bin/sh
runTerminal() {
    if [ $TERMINAL = "true" ]
    then
        echo "Installing Oh My Zsh..."
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

        echo "Installing Powerlevel10k..."
        git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
        curl -s https://gist.githubusercontent.com/rasouza/529ca4cda3e6b8ddf3432d9e164acb0b/raw/24954f071aad00b02010dfdd5133c93e295ee74f/.zshrc > ~/.zshrc
        curl -s https://gist.githubusercontent.com/rasouza/3fcfaff61fbae885654ec1ae9fe9e402/raw/2fbcc0975e036f0926cc9c44177bf1bf91e1d151/.p10k.zsh > ~/.p10k.zsh

        echo "Configuring terminal..."
        curl -s https://gist.githubusercontent.com/rasouza/d673c7587dba86c3504e098543f69d38/raw/f4316b901c8ef529a60011636350534d245d023f/motd > /etc/motd
        curl -s https://gist.githubusercontent.com/rasouza/e149588b564e48dc3d4e5e645fdad7d6/raw/ec349c3ed8b7a28339b63af63f680528015e39b8/profile.json > ~/profile.json
        $(brew --prefix)/opt/fzf/install #fzf
    fi
}