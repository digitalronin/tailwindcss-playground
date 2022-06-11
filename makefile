TAG := tailwindcss-playground

.built: Dockerfile css/tailwind.css package.json
	docker build -t $(TAG) .
	touch .built

build: .built
	docker run --rm \
		-w /app \
		-v $$(pwd):/app \
		$(TAG) npx tailwindcss build -i css/tailwind.css -o build/tailwind.css

shell: .built
	docker run --rm \
		-w /app \
		-v $$(pwd):/app \
		-it $(TAG) sh
