build:
	docker build -t ubuntu:latest .
	cd ansible && docker build -t ubuntu:ansible .
	docker tag ubuntu:latest royge/ubuntu:latest
	docker tag ubuntu:ansible royge/ubuntu:ansible

push:
	docker push royge/ubuntu:latest
	docker push royge/ubuntu:ansible

prepare:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

test:
	container-structure-test test \
		--image ubuntu:latest \
		--config test-config.yaml
	container-structure-test test \
		--image ubuntu:ansible \
		--config ansible/test-config.yaml
