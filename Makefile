.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup-shell: ## This assumes you have already ran install-shell
	@zsh setup setup_shell

backup-shell: ## This backs up your current shell config.
	@zsh setup backup_shell

remove-shell: ## This removes the shell config that we linked.
	@zsh setup remove_shell

check-deps: ## Check dependencies
	@zsh setup check_dependencies

install-deps: ## Install dependencies
	@zsh setup install_dependencies
