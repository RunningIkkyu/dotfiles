# Tmux Config

## 📷 Screenshot

To be upload. ⛄

## 🐧 Feature

- Dark, elegent, beautiful color sheme.
- Out of box in WSL and Linux.
- The index of tab starts from 1.
- Use vim copy mode.
- Move status bar to the top.

## 🚀 Quick start

<pre>
- Send Prefix:                 <kbd>Alt</kbd>-<kbd>Q</kbd>
- Vertical Split:              <kbd>Prefix</kbd>, <kbd>|</kbd>
- Horizontal Split:            <kbd>Prefix</kbd>, <kbd>-</kbd>
- Create tab:                  <kbd>Prefix</kbd>, <kbd>Space</kbd>
- Switch to tab 1~9:           <kbd>Alt</kbd>-<kbd>1</kbd>... <kbd>Alt</kbd>-<kbd>9</kbd>
- Switch to last tab:          <kbd>Prefix</kbd>, <kbd>Tab</kbd>
- Move to left tab:            <kbd>Prefix</kbd>, <kbd>Alt</kbd>-<kbd>H</kbd>
- Move to right tab:           <kbd>Prefix</kbd>, <kbd>Alt</kbd>-<kbd>L</kbd>
- Rename tab:                  <kbd>Prefix</kbd>, <kbd>,</kbd>
- Close tab:                   <kbd>Prefix</kbd>, <kbd>X</kbd>
- Resize Windows (horizontal): <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>H</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>L</kbd>
- Resize Windows (vertical):   <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>J</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>K</kbd>
- Move to the left pane:       <kbd>Alt</kbd>-<kbd>H</kbd>
- Move to the right pane:      <kbd>Alt</kbd>-<kbd>L</kbd>
- Move to the up pane:         <kbd>Alt</kbd>-<kbd>K</kbd>
- Move to the down pane:       <kbd>Alt</kbd>-<kbd>J</kbd>
- Toggle full screen of pane:  <kbd>Prefix</kbd>, <kbd>Space</kbd>
</pre>


## Installation

### 2. Install manually


Copy tmux config file:


```bash
cp ./.tmux.conf $HOME/.tmux.conf
```


For WSL user, install `wsl-open` and rename to `xdg-open` to open urls (use
tmux-open plugin).
