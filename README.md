# dotfiles

This is my take on dotfiles, to help save me time and keep my various systems in-sync with eachother. I tend to run various VMs locally, right now mostly Ubuntu and profressionally I use MacOS.

## Setup

The setup is aimed to be easy as possible. I have built out the scripts to make my life easier, so I can get up and go.

To see the various commands run `make help`, this will output the current commands with a brief description of what it does.

```shell
❯ make help
backup-shell                   This backsup your current shell config and stores it in $HOME/.dotfiles/backup
check-deps                     This checks to make sure the various dependencies are installed, and if not it will tell you which ones are missing.
install-deps                   This will run through the various dependencies and install them if they are absent.
remove-shell                   This removes the current shell config.
setup-shell                    This sets up the shell config by pointing the shell to the dotfiles/shell folder.
```

1. Let's first run the check to see what we are missing: `make check-deps`.

   ```shell
   ❯ make check-deps

   Checking for installed apps
   ==============================

   Checking git... Installed.
   Checking curl... Installed.
   Checking pip... Installed.
   Checking python3... Installed.
   Checking zsh... Installed.
   Checking rg... Installed.
   Checking fzf... Installed.
   Checking nvm... Installed.
   Checking zplug... Installed.
   ```

2. In the above case, we can see we have everything installed, but if we didn't we would then run: `make install-deps`.

   ```shell
   ❯ make install-deps

   Installing dependencies
   ==============================

   Git is already installed.
   curl is already installed.
   nvm is already installed.
   python is already installed.
   pip is already installed.
   zsh is already installed.
   ripgrep is already installed.
   fzf is already installed.
   zplug is already installed.
   ```

3. Before installing my current configurations, I recommend making sure you backup what you have today. Run `make backup-shell`, this will store all your current zsh configurations in `$HOME/.dotfiles/backup`.

4. Now it's time to setup the shell, this is easy. Run `make setup-shell`, this will setup a new `zshenv` file that points the envirnoment to the `dotfiles/shell` folder.

## Issues

I have an ongoing file with common issues I have encountered that I want to document for myself later. You can view these in the [COMMON.md](./COMMON.md).
