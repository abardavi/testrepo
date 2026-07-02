# Red Hat Hardened Image — minimal glibc runtime (Project Hummingbird), digest-pinned
#FROM registry.access.redhat.com/hi/core-runtime@sha256:02ca768db83eda71f60e3dec80ec31438a78a38b376975390cd332a3658f7478
FROM registry.access.redhat.com/ubi8/ubi-minimal:8.10-1782840767

COPY --chmod=755 entrypoint.sh /entrypoint.sh

RUN microdnf install tar gzip

RUN mkdir /releases && \
    echo "test tar file creation" > /tmp/mytext.txt && \
    tar -czf /releases/test-file-1.tar.gz /tmp/mytext.txt

ENTRYPOINT ["/entrypoint.sh"]
