#!/bin/bash
echo "Using Go - $(go version)"
if [ "$1" == "fuse2" ]
then
    # Build blobfuse2 with fuse2
    rm -rf blobfuse2
    rm -rf azure-storage-fuse
    go build -tags fuse2 -o blobfuse2
elif [ "$1" == "darwin" ]
then
    # Build BlobFuse on macOS using the native darwin build tags
    rm -rf blobfuse2
    rm -rf azure-storage-fuse
    go build -o blobfuse2
elif [ "$1" == "health" ]
then
    # Build Health Monitor binary
    rm -rf bfusemon
    go build -o bfusemon ./tools/health-monitor/
elif [ "$1" == "darwin" ]
then
    rm -rf blobfuse2
    rm -rf azure-storage-fuse
    go build -tags darwin -o blobfuse2
else
    # Build blobfuse2 with fuse3
    rm -rf blobfuse2
    rm -rf azure-storage-fuse
    go build -tags fuse3 -o blobfuse2
fi
