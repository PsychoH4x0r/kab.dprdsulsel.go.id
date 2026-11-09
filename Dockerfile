FROM alpine:latest
RUN apk add --no-cache wget
RUN wget https://github.com/jpillora/chisel/releases/download/v1.9.1/chisel_1.9.1_linux_amd64.gz && \
    gunzip chisel_1.9.1_linux_amd64.gz && \
    mv chisel_1.9.1_linux_amd64 /usr/local/bin/chisel && \
    chmod +x /usr/local/bin/chisel
CMD ["/usr/local/bin/chisel", "server", "-p", "8080", "--reverse"]
