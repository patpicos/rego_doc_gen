SHELL := /usr/bin/env bash

install:
	@brew install opa
	@go install github.com/plexsystems/konstraint@latest

doc:
	@konstraint doc --no-rego

build:
	@konstraint create opa --output yaml
	
validate:
	@docker run -it --rm \
		-v "$(CURDIR):/workspace" \
		-w=/workspace \
		gcr.io/config-validator/pollicy-tool:latest \
		lint \
		--policies /workspace/yaml \
		--libs /workspace/lib
