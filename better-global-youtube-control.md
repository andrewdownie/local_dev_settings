# Better Global Youtube Control
This is a better approach for controling Youtube than what's found in adjacent file: ```youtubeControl.ahk```

Instead of using autohotkey, we can use a chrome extension, and then map a global chrome hotkey to that extension to control youtube from anywhere. Should work for any chromium based browser.

This has two distinct benefits
- One: it no longer requires autohotkey, and therefore becomes a ```cross platform``` approach
- Two: ```does not lose focus``` from the current window, meaning youtube can be paused in the middle of typing into a text box without any interruption. Whereas the autohotkey approach would end edit mode of the text box (such as when renaming a file).

# Setup steps
## 1) Add Youtube extension to chrome
Full url: [https://chrome.google.com/webstore/detail/tweaks-for-youtube/ogkoifddpkoabehfemkolflcjhklmkge](https://chrome.google.com/webstore/detail/tweaks-for-youtube/ogkoifddpkoabehfemkolflcjhklmkge)

Extension name: [Tweaks for YouTube](https://chrome.google.com/webstore/detail/tweaks-for-youtube/ogkoifddpkoabehfemkolflcjhklmkge)

# 2) Create global chrome hotkeys
Visit: ```chrome://extensions/shortcuts``` (All chromium based browsers recognize this url)

While at the above url, find ```Tweaks for YouTube``` section. Set a hotkey for the function you want a global hotkey for. Once the hotkey is set, click the dropdown to the right of the hotkey, and change the selected option to be ```Global```. You should now be able to control youtube with that hotkey from anywhere in your OS.

For example you could set ```Toggle play``` to ```Ctrl + Space```, change the drop down to ```Global``` and then while in another program press ```Ctrl + Space``` to pause/play the last youtube video you _manually paused or played_.

# Notes
- This seems to control the last youtube video you played/paused
  - if it stops working, try cycling play/pause of the video with regular mouse clicks, and then trying the hotkey again
- If you update a hotkey, be sure to reapply the ```Global``` option in the adjacent dropdown
- You'll probably still want to map the global chrome hotkey to a single key with another program for more convient use
  - such as with autohotkey, remap software that came with a keyboard/mouse or any other key remap software
