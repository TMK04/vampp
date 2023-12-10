# Download Weights

. .env

pip install -r "$ROOT_DIR/requirements/download_large.txt"

## CodeFormer

cd "$ROOT_DIR/CodeFormer"
python basicsr/setup.py develop
python scripts/download_pretrained_models.py CodeFormer

## LLM

cd "$ROOT_DIR/LLM"
