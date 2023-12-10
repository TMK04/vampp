# Download Large Files

. .env

## CodeFormer

cd "$ROOT_DIR/CodeFormer"
python basicsr/setup.py develop
python scripts/download_pretrained_models.py CodeFormer

## Server

cd "$ROOT_DIR/server"
./script_download_large.sh
