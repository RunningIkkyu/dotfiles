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

- Send Prefix:                 <kbd>Alt</kbd> + <kbd>Q</kbd>
- Vertical Split:              <kbd>Prefix</kbd>, <kbd>|</kbd>
- Horizontal Split:            <kbd>Prefix</kbd>, <kbd>-</kbd>
- Change Tag:                  <kbd>Alt</kbd> + <kbd>1</kbd>~<kbd>9</kbd>
- Change to last tab:          <kbd>Prefix</kbd>, <kbd>Tab</kbd>
- Change to the left tab:      <kbd>Prefix</kbd>, <kbd>Alt</kbd> + <kbd>H</kbd>
- Change to the right tab:     <kbd>Prefix</kbd>, <kbd>Alt</kbd> + <kbd>L</kbd>
- Rename tab:                  <kbd>Prefix</kbd>, <kbd>,</kbd>
- Close tab:                   <kbd>Prefix</kbd>, <kbd>X</kbd>
- Resize Windows (horizontal): <kbd>Prefix</kbd>, <kbd>Shift</kbd> + <kbd>H</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd> + <kbd>L</kbd>
- Resize Windows (vertical):   <kbd>Prefix</kbd>, <kbd>Shift</kbd> + <kbd>J</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd> + <kbd>K</kbd>


## Installation

### 2. Install manually


Copy tmux config file:


```bash
cp ./.tmux.conf $HOME/.tmux.conf
```


For WSL user, install `wsl-open` and rename to `xdg-open` to open urls (use
tmux-open plugin).
