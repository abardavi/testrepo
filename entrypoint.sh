#!/bin/bash -e

echo "hello world"

echo "test tar file creation" > /tmp/mytext.txt

tar -czf /releases/test-file-1.tar.gz /tmp/mytext.txt
