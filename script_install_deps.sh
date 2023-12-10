# Install dependencies

. .env

# Python

pip install -r "$ROOT_DIR/requirements/install_deps.txt"

# Node

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate

# Website 

cd "$ROOT_DIR/website"
pnpm i --prod
