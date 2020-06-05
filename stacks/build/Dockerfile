ARG base_image
FROM ${base_image}

# Install packages that we want to make available at build time
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
		dpkg-dev \
		gcc \
		libbluetooth-dev \
		libbz2-dev \
		libc6-dev \
		libexpat1-dev \
		libffi-dev \
		libgdbm-dev \
		liblzma-dev \
		libncursesw5-dev \
		libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
		make \
		tk-dev \
		uuid-dev \
		wget \
                git \
		xz-utils \
		zlib1g-dev \
		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') && \
  rm -rf /var/lib/apt/lists/* 

COPY ./bin/jq-linux64 /usr/local/bin/jq
COPY ./bin/yj-linux /usr/local/bin/yj

# Set required CNB information
ARG stack_id
ENV CNB_STACK_ID=${stack_id}
LABEL io.buildpacks.stack.id=${stack_id}

# Set user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}
