#!/bin/bash

docker pull dclong/base:centos7.6
docker build -t dclong/rust:centos7.6 .
