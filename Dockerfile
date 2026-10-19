FROM --platform=linux/amd64 registry.access.redhat.com/ubi9/ubi-minimal

WORKDIR /opt/test

COPY output.sh .

CMD [./output.sh]
