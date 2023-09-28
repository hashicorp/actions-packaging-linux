# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Debian GNU/Linux 10 (1.13.10-buster)
FROM docker.mirror.hashicorp.services/golang:1.21

ENV GO111MODULE=on
ENV CGO_ENABLED=0

# Build templater
WORKDIR "/go/src/github.com/hashicorp/actions-packaging-linux"
COPY ./ .
RUN go build -o nfpm_template
RUN cp nfpm_template /usr/local/bin/nfpm_template
RUN chmod +x /usr/local/bin/nfpm_template

# Download nfpm
# RUN curl -Lo nfpm.tar.gz https://github.com/goreleaser/nfpm/releases/download/v2.13.0/nfpm_2.13.0_Linux_x86_64.tar.gz \
#     && tar -xf nfpm.tar.gz \
RUN git clone --depth=1 --branch fix_deb_version_control https://github.com/kpenfound/nfpm.git \
    && cd nfpm \
    && go build ./cmd/nfpm \
    && cp nfpm /usr/local/bin/nfpm
RUN chmod +x /usr/local/bin/nfpm

# Copy entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# set entrypoint command
ENTRYPOINT ["/usr/local/bin/entrypoint.sh" ]
