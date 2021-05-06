#!/bin/bash
VERSION=0.1.4

rm helm-ecr_${VERSION}_darwin_amd64.tar.gz

rm -Rf package
mkdir package

cp plugin.yaml package/
cp -R bin package/
cp LICENSE package/

tar zcf helm-ecr_${VERSION}_darwin_amd64.tar.gz -C package .