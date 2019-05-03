zagg: zagg-dev-base zagg-dev

run:
	docker run --rm -it -p "8000:8000" --name zagg zagg-dev --testnet

bash:
	docker run --rm -it -p "8000:8000" --name zagg zagg-dev bash

build:
	docker build -t stellar/quickstart -f Dockerfile .

build-testing:
	docker build -t stellar/quickstart:testing -f Dockerfile.testing .

zagg-dev-base:
	docker build -t zagg-dev-base -f Dockerfile-dev-base .

zagg-dev:
	docker build -t zagg-dev -f Dockerfile-dev .

