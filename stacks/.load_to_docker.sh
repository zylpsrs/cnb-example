podman save registry.ocp.zyl.io:5000/cnb-example-base:groovy > /app/tmp/k.tar
docker rmi registry.ocp.zyl.io:5000/cnb-example-base:groovy 2>/dev/null
docker load -i /app/tmp/k.tar

podman save registry.ocp.zyl.io:5000/cnb-example-run:groovy > /app/tmp/k.tar
docker rmi registry.ocp.zyl.io:5000/cnb-example-run:groovy 2>/dev/null
docker load -i /app/tmp/k.tar

podman save registry.ocp.zyl.io:5000/cnb-example-build:groovy > /app/tmp/k.tar
docker rmi registry.ocp.zyl.io:5000/cnb-example-build:groovy 2>/dev/null
docker load -i /app/tmp/k.tar

rm -f /app/tmp/k.tar
