FROM shoothzj/base

WORKDIR /opt

ENV PROCESS_EXPORTER_HOME /opt/process_exporter

ARG version=0.7.10
ARG TARGETARCH

RUN wget -q https://github.com/ncabatoff/process-exporter/releases/download/v$version/process-exporter-$version.linux-$TARGETARCH.tar.gz && \
mkdir -p /opt/process_exporter && \
tar -xf process_exporter-$version.linux-$TARGETARCH.tar.gz -C /opt/process_exporter --strip-components 1 && \
rm -rf process_exporter-$version.linux-$TARGETARCH.tar.gz

WORKDIR /opt/process_exporter
