# Test
.PHONY: test
test: lint
	go test ./... -v -race -cover

# Linter
.PHONY: lint-prepare
lint-prepare:
	@go get github.com/golangci/golangci-lint/cmd/golangci-lint

.PHONY: lint
lint: vendor
	@golangci-lint run \
		--exclude-use-default=false \
		--enable=golint \
		--enable=gocyclo \
		--enable=goconst \
		--enable=unconvert \
		./...
