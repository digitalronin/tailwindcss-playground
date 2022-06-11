TAG := tailwindcss-playground

.built: Dockerfile
	docker build -t $(TAG) .
	touch .built

build: .built

shell: .built
	docker run --rm \
		-w /app \
		-v $$(pwd):/app \
		-it $(TAG) sh
