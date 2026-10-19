FROM --platform=linux/amd64 registry.access.redhat.com/ubi9/ubi-minimal

WORKDIR /opt/test
RUN microdnf install -y openssl 
COPY output.sh .

RUN chmod +x output.sh

CMD ["/opt/test/output.sh"]
