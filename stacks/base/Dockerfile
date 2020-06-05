FROM ubuntu:groovy

ARG cnb_uid=1000
ARG cnb_gid=1000

COPY files/sources.list /etc/apt/sources.list

# Install packages that we want to make available at both build and run time
# runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		xz-utils \
	&& rm -rf /var/lib/apt/lists/*

# Create user and group
RUN groupadd cnb --gid ${cnb_gid} && \
    useradd --uid ${cnb_uid} --gid ${cnb_gid} -m -s /bin/bash cnb

# Set required CNB information
ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}
