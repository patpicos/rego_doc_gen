

install:
	@brew install opa
	@go install github.com/plexsystems/konstraint@latest

doc:
	@konstraint doc --no-rego
