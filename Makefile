SHELL=/bin/sh

.SHELLFLAGS = -e -c
.ONESHELL:
.PHONY: help

# This Makefile helps the team to dev/debug/act with this project.
# This Makefile is inspired by https://www.padok.fr/en/blog/beautiful-makefile-awk

##@ General
help: ## Show this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-50s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)


##@ Start a component
start-int-next: ## Start mobile app (no device chosen)
	fvm flutter run -t lib/main_int_next.dart --dart-define=env=intnext

##@ Start a component
build-ipa-next: ## Build iOS app for intnext
	fvm flutter build ipa -t lib/main_int_next.dart --dart-define=env=intnext --flavor intnext

##@ Run the tests
tests: ## Run mobile tests
	fvm flutter test ./test

test-a11y: ## Run only a11y tests
	fvm flutter test --tags "a11y"

##@ Run the tests with coverage and open the result file
tests-with-coverage:
	./scripts/local_coverage.sh

##@ Format & fix
format: ## Format mobile app files
	./scripts/reformat_dart_files.sh

format-check-error: ## Format mobile app files, fail if any file is formatted
	./scripts/reformat_dart_files_exit_with_any_changed.sh

fix-issues: ## Fix automatically dart issues
	fvm dart fix --apply

generate: ## Generate code like graphql requests or mocks file
	./scripts/OSX_generate_code.sh

lint: ## Analyze and lint the code
	fvm flutter analyze

mr-limit: ## Check if there's too many MR opened
	./scripts/merge_request_limit.sh

spider: ## Generate EnsImages with Spider
	spider build

lint-changed: ## Analyze and lint only the changed files
	./scripts/analyze_file_changes.sh