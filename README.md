# Dotfiles

Manage my dotfiles using [dotbot][dotbot], with `cd ~/.dotfiles && ./install` to 
update. The config in this repo mainly comes from [dotfiles][dotfiles-ref].

Note: By default, the script assumes that the configuration is located in 
`install.conf.yaml`, the Dotbot submodule is located in `dotbot`. 

Here's an example of a complete configuration.

```yaml
- defaults:
    link:
      relink: true

- clean: ['~']

- link:
    ~/.tmux.conf: tmux.conf
    ~/.vim: vim
    ~/.vimrc: vimrc

- create:
    - ~/downloads
    - ~/.vim/undo-history

- shell:
  - [git submodule update --init --recursive, Installing submodules]
```

---

## tmux config

### Shortcuts

Shortcuts with prefix: `<Ctrl + a>`, more detail in [Tmux Cheat Sheet & Quick Reference][tmuxcheatsheet].

```
tmux ls                     Show all sessions
tmux a -t ses-name          Attach to a session with the name
<C-d>                       kill the current session
tmux kill-server            Kill the tmux server&clients and destroy all sessions
tmux kill-ses -a            kill all sessions but the current
tmux kill-ses -t ses-name   kill all sessions but ses-name
```

```
<C-a> ?           Display a list of shortcuts
<C-a> R           Reload the .tmux.conf file

# Sessions
<C-a> s           Show all sessions
<C-a> $           Rename session
<C-a> d           Detach from session

# Windows
<C-a> w           Show all windows
<C-a> &           Close current window
<C-a> .           Move current window
<C-a> ,           Rename current window

# Panes
<C-a> x           Close current pane
<C-a> |           Split pane with horizontal layout
<C-a> -           Split pane with vertical layout
<C-a> t           Switch current pane to time mode
```

### tmux-resurrect
Persists tmux environment across system restarts.
Install [tmux-resurrectusing][tmux-resurrect] with [Tmux Plugin Manager][tpm].
```
<C-a> <C-s>       save
<C-a> <C-r>       restore
```

[dotbot]: https://github.com/anishathalye/dotbot
[tmuxcheatsheet]: https://tmuxcheatsheet.com/
[tmux-resurrect]: https://github.com/tmux-plugins/tmux-resurrect
[tpm]: https://github.com/tmux-plugins/tpm
[dotfiles-ref]: https://github.com/anishathalye/dotfiles