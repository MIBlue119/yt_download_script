.DEFAULT_GOAL :=help 
.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Prepare the dependency environment for package
	pip install -r requirements.txt

download: ## Download the data from the source
	./download_script.sh