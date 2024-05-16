# The command below configures MacOS dock autohide animation duration
defaults write com.apple.dock autohide-time-modifier -float 0.75; killall Dock

# The command below removes the delay in showing a hidden dock
defaults write com.apple.dock autohide-delay -float 0; killall Dock
