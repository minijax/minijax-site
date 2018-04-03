#!/usr/bin/env bash

# Copy files to S3
aws s3 sync ./ s3://minijax.org/ --region us-west-2 --acl public-read --size-only --exclude ".git/*" --exclude ".DS_Store"

# Create CloudFront invalidation
aws cloudfront create-invalidation --distribution-id EREBT907K0HF9 --paths "/" "/index.html" "/css/*" "/img/*" "/js/*"

