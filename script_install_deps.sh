# Install dependencies

. .env

# Server

pip install -r "$ROOT_DIR/server/requirements/install_deps.txt"

# Website 

cd "$ROOT_DIR/website"
pnpm i --prod
