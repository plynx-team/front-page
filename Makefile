REPO=plynx-team
PORT=3005
VERSION=$(shell . version.sh; getVersion)
BASENAME=$(shell basename $(CURDIR))


build:
	docker build --rm -t ${REPO}/${BASENAME}:${VERSION} . ;
	docker tag ${REPO}/${BASENAME}:${VERSION} ${REPO}/${BASENAME}:latest;

run:
	echo http://localhost:${PORT}
	docker run -p ${PORT}:80 ${REPO}/${BASENAME}:${VERSION}

push:
	docker push ${REPO}/${BASENAME}:${VERSION}
	docker push ${REPO}/${BASENAME}:latest
