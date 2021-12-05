# NAME: dclong/rust
FROM dclong/base
# GIT: https://github.com/dclong/docker-base.git

COPY scripts /scripts
RUN yum install -y cmake gcc \
    && /scripts/sys/purge_cache.sh
    
ENV HOME=/root PATH=/root/.cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y \
    && mkdir /root/.rustup \
    && chmod -R 777 /root/
