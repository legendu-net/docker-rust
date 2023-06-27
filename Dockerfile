# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        pkg-config libssl-dev cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh

ENV RUSTUP_HOME=/usr/local/rustup PATH=/usr/local/cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --profile minimal -c rustfmt \
    && /scripts/sys/purge_cache.sh
