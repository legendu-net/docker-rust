# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

WORKDIR /workdir
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh
    
ARG ver=1.61.0
#SHELL ["/bin/bash", "-O", "extglob", "-c"]
RUN curl -sSL https://static.rust-lang.org/dist/rust-${ver}-x86_64-unknown-linux-gnu.tar.gz -o /tmp/rust.tar.gz \
    && tar -zxvf /tmp/rust.tar.gz -C /tmp/ \
    && /tmp/rust-${ver}-x86_64-unknown-linux-gnu/install.sh --without=rust-demangler-preview,rls-preview,rust-analysis-x86_64-unknown-linux-gnu \
    && rm -rf /usr/local/lib/rustlib/!(etc|src|x86_64-unknown-linux-gnu) \
    && curl -sSL https://static.rust-lang.org/dist/rustc-1.61.0-src.tar.gz -o /tmp/rust.tar.gz \
    && mkdir -p /usr/local/lib/rustlib/src/rust \
    && tar -zxvf /tmp/rust.tar.gz -C /usr/local/lib/rustlib/src/rust --strip-components=1 \
    && cargo install cargo-cache \
    && mv /root/.cargo/bin/cargo-cache /usr/local/bin/ \
    && /scripts/sys/purge_cache.sh

