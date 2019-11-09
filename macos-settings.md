# Mac OS settings

## Changing key repeat on Mac OS
VIM is almost unusable without key repeat. Key repeat is disabled by default on Mac OS.

You will need to logout and log back in for the commands below to take effect in all apps.

### ENABLE KEY REPEAT
```bash
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```

### SET SPEED OF REPEATING KEYS
```bash
defaults write -g KeyRepeat -int 6 # normal minimum is 2 (30ms)
```

### SET DELAY BEFORE REPEATING STARTS
```bash
defaults write -g InitialKeyRepeat -int 12 # normal is 15 (225 ms)
```

### Find and kill application using port
#### sudo lsof -i tcp:<PORT>
#### sudo kill -9 <PID>
