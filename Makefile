.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup-shell: ## This sets up the shell config by pointing the shell to the dotfiles/shell folder.
	@zsh setup setup_shell

backup-shell: ## This backsup your current shell config and stores it in $HOME/.dotfiles/backup
	@zsh setup backup_shell

remove-shell: ## This removes the current shell config.
	@zsh setup remove_shell

check-deps: ## This checks to make sure the various dependencies are installed, and if not it will tell you which ones are missing.
	@zsh setup check_dependencies

install-deps: ## This will run through the various dependencies and install them if they are absent.
	@zsh setup install_dependencies

fix-file: ## Use this when running into CLF -> LF encoding issues:
	find . -type f -print0 | xargs -0 dos2unix