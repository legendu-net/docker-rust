# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        pkg-config libssl-dev cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh
    
ENV RUSTUP_HOME=/usr/local/rustup PATH=/usr/local/cargo/bin:$PATH
RUN icon rustup -ic --rustup-home=$RUSTUP_HOME --cargo-home=/usr/local/cargo \
    && /scripts/sys/purge_cache.sh

