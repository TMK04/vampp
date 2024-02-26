. .env

tmux new-session -c "$ROOT_DIR/server" -s server -d
tmux send-keys -t server "python main.py" C-m
tmux new-session -c "$ROOT_DIR/website" -s website -d
tmux send-keys -t website "pnpm start" C-m
