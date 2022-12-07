#!/bin/bash
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


echo "Creating template files..."
INPUT_DEPENDS=$INPUT_RPM_DEPENDS /usr/local/bin/nfpm_template > ./nfpm_rpm_config.yaml
INPUT_DEPENDS=$INPUT_DEB_DEPENDS /usr/local/bin/nfpm_template > ./nfpm_deb_config.yaml

echo "Packaging..."
mkdir -p ./out
/usr/local/bin/nfpm package -f ./nfpm_rpm_config.yaml -p rpm -t ./out/
/usr/local/bin/nfpm package -f ./nfpm_deb_config.yaml -p deb -t ./out/
