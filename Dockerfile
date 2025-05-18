ARG ITOP_COLLECTOR_BASE_IMAGETAG=1.4.1

FROM alpine/git:latest AS build

ARG ITOP_IMAGETAG=1.0.0
RUN git clone --branch $ITOP_IMAGETAG --depth 1 https://github.com/lacrif/itop-data-collector-zabbix.git

FROM lacrif/itop-data-collector-base:$ITOP_COLLECTOR_BASE_IMAGETAG

COPY --from=build /git/itop-data-collector-zabbix /opt/itop-data-collector-base/collectors
