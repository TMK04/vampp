# Written for Paperspace Gradient

## Base image

apt update && apt upgrade -y
apt-get install build-essential -y
apt-get install ffmpeg git p7zip-full -y

## Git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

## Python

conda update -n base -c defaults conda -y
pip install --upgrade pip setuptools wheel

## Setup

./script_setup.sh
