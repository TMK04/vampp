. .env

## Base image

apt install ffmpeg lsof nano p7zip-full tmux -y

## Python

conda update -n base conda -y
conda update -n base anaconda -y
pip install --upgrade packaging pip setuptools wheel
conda install cuda -c nvidia/label/cuda-11.8.0 -y

## Node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate
