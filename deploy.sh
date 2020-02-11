#!/usr/bin/env bash

# Build with Hugo
hugo

# Copy output to minijax.github.io
cp -R public/* ../minijax.github.io/
