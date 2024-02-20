# Install dependencies

. .env

# Server

ROOT_DIR="$ROOT_DIR/server" ./server/script_install_deps.sh

# Website 

cd "$ROOT_DIR/website"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 20
nvm use 20
corepack enable
corepack prepare pnpm@latest --activate
pnpm i --prod
