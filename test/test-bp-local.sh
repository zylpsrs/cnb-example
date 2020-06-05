#! /usr/bin/env bash

if [[ $1 == 'python' ]]; then
  pack build test-python-app \
    --builder cnb-example-builder:groovy \
    --path ../apps/python-pip \
    --buildpack ../buildpacks/python \
    --buildpack ../buildpacks/pip \
    --no-pull -v
fi

if [[ $1 == 'ruby' ]]; then
  pack build test-ruby-app \
    --builder cnb-example-builder:groovy \
    --path ../apps/ruby-bundler \
    --buildpack ../buildpacks/ruby-bundler \
    --no-pull -v
fi
