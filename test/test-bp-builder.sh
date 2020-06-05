if [[ $1 == 'python' ]]; then
  pack build test-python-app \
    --builder cnb-example-builder:groovy \
    --no-pull \
    --path ../apps/python -v
fi

if [[ $1 == 'python-pip' ]]; then
  pack build test-python-pip \
    --builder cnb-example-builder:groovy \
    --no-pull \
    --path ../apps/python-pip -v
fi

if [[ $1 == 'ruby' ]]; then
  pack build test-ruby-app \
    --builder cnb-example-builder:groovy \
    --no-pull \
    --path ../apps/ruby-bundler -v
fi
