FROM alpine:3.7

RUN apk add --no-cache gcc musl-dev make

WORKDIR /home

VOLUME /home

CMD ["/bin/sh"]