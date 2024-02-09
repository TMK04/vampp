# Written for Paperspace Gradient

## Base image

FROM nvcr.io/nvidia/rapidsai/notebooks:23.12-cuda11.8-py3.10

RUN apt update && apt upgrade -y
RUN apt install build-essential -y
RUN apt install ffmpeg git p7zip-full -y

RUN conda update -n base -c defaults conda -y
RUN pip install --upgrade pip setuptools wheel

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt install git-lfs
git lfs install

## Node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate
