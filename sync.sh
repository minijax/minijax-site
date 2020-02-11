#!/usr/bin/env bash

# Copy files to S3
aws s3 cp --recursive ./public s3://minijax.org/ --region us-west-2 --exclude ".DS_Store"

# Create CloudFront invalidation
aws cloudfront create-invalidation --distribution-id EB74ISGX86TTQ --paths "/index.html"

