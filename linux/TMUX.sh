# Create a new TMUX session with the name specified
tmux new -s {name}

# List all ongoing TMUX Sessions
tmux ls

# Detach and Close Session
Ctrl B + d (In Session)

# Exit and Close Session
Ctrl B + & (In Session)

# Reconnect to a detached session
tmux a -t {name}