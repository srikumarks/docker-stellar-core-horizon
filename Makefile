zagg: zagg-dev-base zagg-dev

run: .dep_zagg_dev
	docker run -it -p "8000:8000" --name zagg zagg-dev --testnet
	# docker run --rm -it -p "8000:8000" --name zagg zagg-dev --testnet

bash:
	docker exec -it zagg bash

build:
	docker build -t stellar/quickstart -f Dockerfile .

build-testing:
	docker build -t stellar/quickstart:testing -f Dockerfile.testing .

zagg-dev-base: .dep_zagg_dev_base

.dep_zagg_dev_base: 
	docker build -t zagg-dev-base -f Dockerfile-dev-base .
	touch .dep_zagg_dev_base

zagg-dev: .dep_zagg_dev

.dep_zagg_dev: .dep_zagg_dev_base
	docker build -t zagg-dev -f Dockerfile-dev .
	touch .dep_zagg_dev

