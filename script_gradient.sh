# Written for Paperspace Gradient

. .env

## Base image

apt update && apt upgrade -y
apt-get install build-essential -y
apt-get install ffmpeg git p7zip-full -y

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

git pull && git submodule update --init --recursive

## Python

conda update -n base conda -y
conda update -n base anaconda -y
pip install --upgrade packaging pip setuptools wheel
conda install cuda -c nvidia/label/cuda-11.8.0 -y

## AWS

. "$SCRIPT_AWS"

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

conda install 
find "$ROOT_DIR" -iname \*.sh -print0 | xargs -r0 chmod +x
./script_setup.sh
./script_install_deps.sh
