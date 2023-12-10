# Written for Paperspace Gradient

## Base image

apt update && apt upgrade -y
apt-get install build-essential -y
apt-get install ffmpeg git p7zip-full -y

conda update -n base -c defaults conda -y
pip install --upgrade pip setuptools wheel

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

## Node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate
