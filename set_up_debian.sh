sudo apt-get update && sudo apt-get -y install \
	vim \
	yubioath-desktop \
	git \
	libasound2-dev \
	libsdl2-dev \
	pkg-config

curl https://sh.rustup.rs -sSf | sh

read GITHUB_EMAIL
git config --global user.email "$GITHUB_EMAIL"
read GITHUB_NAME
git config --global user.name "$GITHUB_NAME"
