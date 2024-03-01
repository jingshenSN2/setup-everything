# Setup everything

This repo stores scripts and instructions to make a new mac ready for my code developing.

## Run

I recommend to run the scripts in the following order:

### 1. Homebrew & Shell

```bash
. ./homebrew.sh
. ./iterm2.sh
. ./oh-my-zsh.sh
. ./zshplugins.sh
```

### 2. Vim & Git & Vscode

```bash
. ./vim.sh
. ./git.sh
. ./vscode.sh
```

## Outcomes

- Homebrew: `brew` to install packages
- iTerm2: terminal replacement
- Oh My Zsh: bash replacement with spaceship theme and plugins:
    - zsh-autosuggestions: auto complete based on history
    - zsh-syntax-highlighting: syntax highlight
    - autojump: use `j` to jump to a directory
- The**: use `f` to automatically fix typo in the previous command
- Vim: with line numbers, syntax highlight, mouse support, and other configs
- Git: with user name and email set, `ci`, `co`, `br`, `st` aliases, auto pull with rebase, auto push with set-upstream
- Vscode: `code` installed in PATH, Copilot and Git Graph extensions, Stardew Valley theme installed