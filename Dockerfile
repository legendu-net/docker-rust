# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

RUN apt-get -y update \
    && apt-get -y install --no-install-recommends \
        pkg-config libssl-dev cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh

ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --profile minimal -c rustfmt \
    && /scripts/sys/purge_cache.sh

COPY scripts /scripts
