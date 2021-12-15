FROM robertxie/ubuntu-nettools AS builder

# Download and extract he latest terrad build
RUN wget https://github.com/terra-money/core/files/7689759/terra_0.5.13-oracle_Linux_x86_64.tar.gz
RUN tar -xzvf terra_0.5.13-oracle_Linux_x86_64.tar.gz
RUN mv terrad /opt/terrad
RUN chmod 777 /opt/terrad

FROM alpine:3.12

WORKDIR /root

COPY --from=builder /opt/terrad /usr/local/bin/terrad

# rest server
EXPOSE 1317
# grpc
EXPOSE 9090
# tendermint p2p
EXPOSE 26656
# tendermint rpc
EXPOSE 26657

CMD ["/usr/local/bin/terrad", "version"]
