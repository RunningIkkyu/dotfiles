# Tmux Config

## 📷 Screenshot

![screenshot](https://github.com/RunningIkkyu/dotfiles/blob/main/res/capture_tmux.PNG?raw=true)


## 🐧 Feature

- Dark, elegent, beautiful color sheme.
- Out of box in WSL and Linux.
- The index of tab starts from 1.
- Use vim copy mode.
- Move status bar to the top.

## 🚀 Quick start

<pre>
- Send Prefix:                <kbd>Alt</kbd>-<kbd>Q</kbd>
- New tab:                    <kbd>Prefix</kbd>, <kbd>Space</kbd>
- Go to tab 1~9:              <kbd>Alt</kbd>-<kbd>1</kbd>... <kbd>Alt</kbd>-<kbd>9</kbd>
- Go to last tab:             <kbd>Prefix</kbd>, <kbd>Tab</kbd>
- Go to left tab:             <kbd>Prefix</kbd>, <kbd>Alt</kbd>-<kbd>H</kbd>
- Go to right tab:            <kbd>Prefix</kbd>, <kbd>Alt</kbd>-<kbd>L</kbd>
- Rename tab:                 <kbd>Prefix</kbd>, <kbd>,</kbd>
- Close tab:                  <kbd>Prefix</kbd>, <kbd>X</kbd>
- Vertical Split:             <kbd>Prefix</kbd>, <kbd>|</kbd>
- Horizontal Split:           <kbd>Prefix</kbd>, <kbd>-</kbd>
- Go to left pane:            <kbd>Alt</kbd>-<kbd>H</kbd>
- Go to right pane:           <kbd>Alt</kbd>-<kbd>L</kbd>
- Go to up pane:              <kbd>Alt</kbd>-<kbd>K</kbd>
- Go to down pane:            <kbd>Alt</kbd>-<kbd>J</kbd>
- Resize Pane (horizontal):   <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>H</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>L</kbd>
- Resize Pane (vertical):     <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>J</kbd>  or  <kbd>Prefix</kbd>, <kbd>Shift</kbd>-<kbd>K</kbd>
- Toggle full screen of pane: <kbd>Prefix</kbd>, <kbd>Space</kbd>
- New window:                 <kbd>Prefix</kbd>, <kbd>Ctrl</kbd>-<kbd>c</kbd>
- Go to next window:          <kbd>Prefix</kbd>, <kbd>)</kbd>
- Go to previous window:      <kbd>Prefix</kbd>, <kbd>(</kbd>
- List windows:               <kbd>Prefix</kbd>, <kbd>w</kbd>   (use <kbd>j</kbd>/<kbd>k</kbd> to move, <kbd>x</kbd> to kill windows/tab, <kbd>Enter</kbd> to activate a window.
</pre>


## Installation

### 2. Install manually

Download TPM:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Copy tmux config file:


```bash
cp ./.tmux.conf $HOME/.tmux.conf
```

For WSL user, install `wsl-open` and rename to `xdg-open` to open urls (use
tmux-open plugin).

Source tmux config:

```bash
tmux source ~/.tmux.conf
```

Install Plugins:

<kbd>Prefix</kbd> + <kbd>I</kbd>
