USER=michal

# this wont let popups show
export DEBIAN_FRONTEND=noninteractive

cd /home/$USER
sudo apt update
sudo apt install -y gcc
sudo apt install -y ripgrep

# download nvim
wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz

# extract from tar.gz file
tar -xvf nvim-linux64.tar.gz

# change name for just nvim
mkdir /home/$USER/programs
mv nvim-linux64 nvim
mv nvim programs

# remove after installation
rm nvim-linux64.tar.gz

# nvim configuration
(cd ~/$USER/.config && git clone https://github.com/MichalPrzyl/nvim_config nvim)

# install zsh
sudo apt install -y zsh 
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/$USER/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
(cd ~/$USER/ && git clone https://github.com/MichalPrzyl/nvim_config nvim)

# my .zshrc
(cd ~/$USER/ && git clone https://github.com/MichalPrzyl/zsh_config)
(mv ~/$USER/.zshrc .zshrc_back)
(mv ~/$USER/zsh_config/.zshrc ~/$USER)
(mkdir ~/$USER/bin)
(mv ~/$USER/zsh_config/bin ~/$USER/bin)
(rm -rf ~/$USER/zsh_config)




# tmux
# sudo apt install -y tmux
# cd /home/$USER
# git clone https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .

# git aliases
