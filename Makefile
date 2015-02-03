IMAGE_NAME=importer-movielens-10m
DIR := ${CURDIR}
dummy:
	@echo dummy

build_image:
	docker build -t ${IMAGE_NAME} .

import:
	mkdir -p seldon_data
	mkdir -p raw_data
	docker run --name="movielens_data_transform" -it --rm -v ${DIR}/seldon_data:/movielens/seldon -v ${DIR}/raw_data:/movielens/data ${IMAGE_NAME} /movielens/scripts/run.sh 

clean:
	rm -rf seldon_data
	rm -rf raw_data


