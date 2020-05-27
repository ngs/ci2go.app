#!/bin/sh

set -eux

aws s3 sync --acl public-read public s3://ci2go-app-website
aws s3 cp --acl public-read --content-type application/json public/.well-known/apple-app-site-association s3://ci2go-app-website/docs/.well-known/apple-app-site-association

