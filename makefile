TAG := tailwindcss-playground

.built: Dockerfile css/tailwind.css package.json
	docker build -t $(TAG) .
	touch .built

shell: .built
	docker run --rm \
		-w /app \
		-v $$(pwd):/app \
		-it $(TAG) sh

server: .built
	docker run --rm \
		--name web \
		-w /app \
		-v $$(pwd):/app \
		-p 3000:3000 \
		-e TAILWIND_INPUT_FILE=css/tailwind.css \
		-e TAILWIND_OUTPUT_FILE=build/tailwind.css \
		$(TAG) ./server.sh

stop:
	docker kill web
