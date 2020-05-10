FROM dclong/ubuntu_b

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        cmake cargo rustc \
    && apt-get autoremove \
    && apt-get clean