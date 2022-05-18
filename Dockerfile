# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/legendu-net/docker-base.git

WORKDIR /workdir
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        cmake gcc g++ build-essential \
    && /scripts/sys/purge_cache.sh
    
ENV HOME=/root PATH=/root/.cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y \
    && chmod -R 777 /root/
