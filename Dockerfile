FROM ubuntu:18.04

WORKDIR /workspace

ADD https://github.com/bazelbuild/bazelisk/releases/download/v1.2.1/bazelisk-linux-amd64 /usr/local/bin/bazel

RUN chmod +x /usr/local/bin/bazel \
  && apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y build-essential ca-certificates \
  && apt-get install -y openjdk-11-jdk \
  && apt-get install -y python3 \
  && apt-get install -y python

ENTRYPOINT [ "/usr/local/bin/bazel" ]
