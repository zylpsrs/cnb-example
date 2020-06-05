pack build test-python-app \
  --builder registry.ocp.zyl.io:5000/cnb-example-builder:groovy \
  --path apps/python-pip \
  --buildpack buildpacks/python \
  --buildpack buildpacks/pip \
  --no-pull -v
