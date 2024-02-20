# Written for Paperspace Gradient

. .env

## Base image

apt update && apt upgrade -y
apt install build-essential -y
apt install git -y

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt install git-lfs
git lfs install

git pull
chmod +x $ROOT_DIR/*.sh
./script_submodules.sh

## Setup

./script_setup.sh
./script_install_deps.sh
