# Docker image with Combodo iTop Data Collector Zabbix

[![Docker Pulls](https://img.shields.io/docker/pulls/lacrif/itop-data-collector-zabbix?logo=docker&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Flacrif%2Fitop-data-collector-zabbix)](https://hub.docker.com/repository/docker/lacrif/itop-data-collector-zabbix)
[![Docker Stars](https://img.shields.io/docker/stars/lacrif/itop-data-collector-zabbix?logo=docker&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Flacrif%2Fitop-data-collector-zabbix)](https://hub.docker.com/repository/docker/lacrif/itop-data-collector-zabbix)
[![GitHub forks](https://img.shields.io/github/forks/lacrif/docker-itop-data-collector-zabbix?link=https%3A%2F%2Fgithub.com%2Flacrif%2Fdocker-itop-data-collector-zabbix)](https://github.com/lacrif/docker-itop-data-collector-zabbix)
[![GitHub Repo stars](https://img.shields.io/github/stars/lacrif/docker-itop-data-collector-zabbix?link=https%3A%2F%2Fgithub.com%2Flacrif%2Fdocker-itop-data-collector-zabbix)](https://github.com/lacrif/docker-itop-data-collector-zabbix)

## Usage

```shell
docker run --rm -it -v "./params.distrib.xml:/opt/itop-data-collector-base/collectors/params.distrib.xml" itop-data-collector-zabbix:1.0.0
```

## Building image

```shell
make build
```

or directly

```shell
docker build . \
  	--tag lacrif/itop-data-collector-zabbix:1.0.0 \
	--build-arg ITOP_COLLECTOR_zabbix_IMAGETAG="1.4.1" \
	--build-arg ITOP_IMAGETAG="1.0.0"
```

## Links

 - [GitHub repo](https://github.com/lacrif/docker-itop-data-collector-zabbix)
 - [GitHub Combodo iTop Data Collector zabbix repo](https://github.com/Combodo/itop-data-collector-base)
 - [Documentation Combodo iTop Data collector](https://www.itophub.io/wiki/page?id=extensions:itop-data-collector-base)
 
## Author

[Lacrif](https://github.com/lacrif)
