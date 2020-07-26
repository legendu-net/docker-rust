# NAME: dclong/rust
FROM dclong/ubuntu_b
# GIT: https://github.com/dclong/docker-ubuntu_b.git

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        cmake cargo rustc \
    && apt-get autoremove \
    && apt-get clean
