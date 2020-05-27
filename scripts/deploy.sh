#!/bin/sh

set -eux

aws s3 sync --acl public-read docs s3://ci2go-app-website
aws s3 cp --acl public-read --content-type application/json docs/.well-known/apple-app-site-association s3://ci2go-app-website/docs/.well-known/apple-app-site-association

