install:				## Installs dependencies
	npm install

clean:					## Cleans dependencies and dist folder
	rm -rf ./node_modules ./dist

dev start:			## Starts up dev server
	npm run dev

build:					## Builds site to dist folder
	npm run build

help:						## Lists all known make commands
	@echo ====================================================================
	@grep -E '^## .*$$'  \
		$(MAKEFILE_LIST)  \
		| awk 'BEGIN { FS="## " }; {printf "\033[33m%-20s\033[0m \n", $$2}'
	@echo
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$'  \
		$(MAKEFILE_LIST)  \
		| awk 'BEGIN { FS=":.*?## " }; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'  \
#		 | sort
.PHONY: help
.DEFAULT_GOAL := help