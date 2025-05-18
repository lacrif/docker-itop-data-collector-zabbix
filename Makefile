#vars
ITOP_COLLECTOR_BASE_IMAGETAG=1.4.1
ITOP_IMAGETAG=1.0.0
ITOP_IMAGEFULLNAME=itop-data-collector-zabbix:${ITOP_IMAGETAG}

.PHONY: help build clean

help:
	@echo "Makefile commands:"
	@echo "build"
	@echo "run"
	@echo "clean"
	@echo "all: build run"	

clean:
	@echo "+ $@"
	@docker rmi ${ITOP_IMAGEFULLNAME}  || true

build:
	@echo "+ $@"
	@docker build . \
	--tag ${ITOP_IMAGEFULLNAME} \
	--build-arg ITOP_COLLECTOR_BASE_IMAGETAG="${ITOP_COLLECTOR_BASE_IMAGETAG}" \
	--build-arg ITOP_IMAGETAG="${ITOP_IMAGETAG}"

run:
	@echo "+ $@"
	@docker run --rm -it -v "./params.distrib.xml:/opt/itop-data-collector-base/collectors/params.distrib.xml" ${ITOP_IMAGEFULLNAME}

all: build run
