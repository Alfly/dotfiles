# Dotfiles

Manage my dotfiles using [dotbot][dotbot], with `cd ~/.dotfiles && ./install` to update.

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
<C-a> ?           Display a list of shortcuts
<C-a> w           Show all windows
<C-a> &           Close current window
<C-a> .           Move current window
<C-a> ,           Rename current window
<C-a> x           Close current pane
<C-a> |           Split pane with horizontal layout
<C-a> -           Split pane with vertical layout
<C-a> t           Switch current pane to time mode
<C-a> R           Reload the .tmux.conf file
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
