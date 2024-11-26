FROM gcr.io/distroless/static:latest@sha256:f4a57e8ffd7ba407bdd0eb315bb54ef1f21a2100a7f032e9102e4da34fe7c196

WORKDIR /
COPY derper derper

ENTRYPOINT [ "/derper" ]
