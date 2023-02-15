# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        pkg-config libssl-dev cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh
    
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:$PATH
RUN icon rustup -ic --rustup-home=$RUSTUP_HOME --cargo-home=$CARGO_HOME \
    && /scripts/sys/purge_cache.sh

