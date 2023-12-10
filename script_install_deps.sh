# Install dependencies

. .env

# Server

ROOT_DIR="$ROOT_DIR/server" ./server/script_install_deps.sh

# Website 

cd "$ROOT_DIR/website"
pnpm i --prod
