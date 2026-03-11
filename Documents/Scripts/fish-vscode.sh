#!/opt/homebrew/bin/fish

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title VS Code (fish)
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🐟
# @raycast.description Launch VS Code using fish shell environment

# 确保 fish 是 login shell，加载完整环境
exec fish -l -c "code $argv"
