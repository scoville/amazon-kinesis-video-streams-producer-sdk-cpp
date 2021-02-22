#!/bin/bash
set -Eeuxo pipefail

# sudo apt install libssl-dev libcurl4-openssl-dev liblog4cplus-dev ...

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DBUILD_GSTREAMER_PLUGIN=ON -DBUILD_DEPENDENCIES=OFF
cmake --build build
# cmake --build build --target install

# AWS_REGION=us-east-1
# AWS_VIDEO_STREAM_NAME=test
# YOUR_RTSP_STREAM=rtsp://localhost:5554/

# aws configure

# AWS_DEFAULT_REGION=$AWS_REGION build/kvs_gstreamer_sample $AWS_VIDEO_STREAM_NAME $YOUR_RTSP_STREAM
