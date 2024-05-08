# For directory in directory loop example
for dir in /docker/*; do (cd "$dir" && docker compose down); done