# Video Analytics for Major Project Pitching

VAMPP for short.

## Prerequisites

- OS: Ubuntu 22.04
- [Git LFS][Git LFS]
- [Conda][Conda]

## Installation

1. Clone

```sh
git clone "https://github.com/TMK04/vampp.git" --recurse-submodules -j8
```

2. Create environment

```sh
conda create -n vampp python=3.10
conda activate vampp
pip install --upgrade pip setuptools wheel
```

3. Set environment variables

```sh
cp .env.example .env # then edit .env
cp server/.env.example server/.env # then edit server/.env
cp website/.env.example website/.env # then edit website/.env
```

4. Run setup script

```sh
./script_setup.sh
```

5. Download large files

e.g.

- Weights
- External scripts

```sh
./script_download_large.sh
```

6. Install dependencies

Note: For Docker, skip [there](#docker).

```sh
./script_install_deps.sh
```

## Docker

[Conda]: https://docs.conda.io/projects/miniconda/en/latest
[Git LFS]: https://git-lfs.github.com
