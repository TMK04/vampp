. .env

cd "$ROOT_DIR/server" && git pull origin main
cd "$ROOT_DIR/website" && git pull origin main

chmod +x $ROOT_DIR/**/*.sh
