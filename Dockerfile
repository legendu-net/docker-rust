# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/dclong/docker-base.git

RUN yum install cmake gcc \
    && /scripts/sys/purge_cache.sh
    
ENV PATH=/root/.cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y
