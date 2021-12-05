#!/bin/bash

docker pull dclong/base:next
docker build -t dclong/rust:next .
