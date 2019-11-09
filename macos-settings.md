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

### FIND AND KILL THE APPLICATION USING A PORT
####  List the apps using the port
```bash
sudo lsof -i tcp:<PORT>
```
#### Stop the app
```bash
sudo kill -9 <PID>
```

#### Combined approach
##### You will get an error everytime. This is because it will try to kill the PID of every line that comes out of the lsof command, including the header that has the text 'PID'
```bash
kill -9 $(lsof -i tcp:<PORT> | awk '{print $2}')
```
