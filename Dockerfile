FROM gcr.io/distroless/static:latest@sha256:ce46866b3a5170db3b49364900fb3168dc0833dfb46c26da5c77f22abb01d8c3
WORKDIR /
# COPY manager manager
COPY derper derper

ENV LANG C.UTF-8

ENV DERP_DOMAIN example.com
ENV DERP_CERT_MODE letsencrypt
ENV DERP_CERT_DIR /app/certs
ENV DERP_ADDR :443
ENV DERP_STUN true
ENV DERP_HTTP_PORT 80
ENV DERP_VERIFY_CLIENTS false

CMD /derper -hostname=$DERP_DOMAIN \
    -certmode=$DERP_CERT_MODE \
    -certdir=$DERP_CERT_DIR \
    -a=$DERP_ADDR \
    -stun=$DERP_STUN  \
    -http-port=$DERP_HTTP_PORT \
    -verify-clients=$DERP_VERIFY_CLIENTS

# CMD /app/derper -hostname=$DERP_DOMAIN \
#     -certmode=$DERP_CERT_MODE \
#     -certdir=$DERP_CERT_DIR \
#     -a=$DERP_ADDR \
#     -stun=$DERP_STUN  \
#     -http-port=$DERP_HTTP_PORT \
#     -verify-clients=$DERP_VERIFY_CLIENTS
    

# ENTRYPOINT ["/manager"]
