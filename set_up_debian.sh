sudo apt-get update && sudo apt-get -y install \
	vim \
	yubioath-desktop \
	git \
	libasound2-dev \
	libsdl2-dev \
	pkg-confi \
	dropboxg \
	tmux
	apt-transport-https \
	ca-certificates \
	gnupg2 \
	curl \
	software-properties-common

curl https://sh.rustup.rs -sSf | sh

read GITHUB_EMAIL
git config --global user.email "$GITHUB_EMAIL"
read GITHUB_NAME
git config --global user.name "$GITHUB_NAME"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

dropbox start -i

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/debian \
	$(lsb_release -cs) \
	stable"
sudo apt-get update
