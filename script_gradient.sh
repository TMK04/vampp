# Written for Paperspace Gradient

. .env

## Base image

apt update && apt upgrade -y
apt install build-essential -y
apt install ffmpeg git p7zip-full -y

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt install git-lfs
git lfs install

git pull
chmod +x $ROOT_DIR/*.sh
./script_submodules.sh

## Python

conda update -n base conda -y
conda update -n base anaconda -y
pip install --upgrade packaging pip setuptools wheel
conda install cuda -c nvidia/label/cuda-11.8.0 -y

## Huggingface

. "$SCRIPT_HUGGINGFACE"

## Node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate

## Setup

./script_setup.sh
./script_install_deps.sh
