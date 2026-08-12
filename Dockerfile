FROM gcr.io/distroless/static:latest@sha256:9197324ba51d9cd071af8505989365c006adf9d6d2067eada25aef00abbb5278

WORKDIR /
COPY derper derper

ENTRYPOINT [ "/derper" ]
