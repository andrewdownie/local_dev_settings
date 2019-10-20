# Mac OS settings

## Changing key repeat on Mac OS
VIM is almost unusable without key repeat. Key repeat is disabled by default on Mac OS.

You will need to logout and log back in for the commands below to take effect in all the apps.

### ENABLE KEY REPEAT
```defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false```

### SET SPEED OF REPEATING KEYS
```defaults write -g KeyRepeat -int 6 # normal minimum is 2 (30ms)```

### SET DELAY BEFORE REPEATING STARTS
```defaults write -g InitialKeyRepeat -int 12 # normal is 15 (225 ms)```

