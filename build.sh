#!/bin/bash

docker pull dclong/ubuntu_b:next
docker build -t dclong/rust:next .
