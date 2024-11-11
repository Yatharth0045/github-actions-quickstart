ARG PLATFORM=linux/amd64
FROM --platform=${PLATFORM} alpine

WORKDIR /script

RUN apk update && \
    apk add --no-cache git perl && \
    cd /tmp && \
    git clone https://github.com/jasonm23/cowsay.git  && \
    cd cowsay ; ./install.sh /usr/local && \
    rm -rf /var/cache/apk/* /var/tmp/* /tmp/* && \
    apk del git

COPY cowsay-alpine.sh .

RUN chmod +x cowsay-alpine.sh

CMD ["/bin/sh", "-c",  "/script/cowsay-alpine.sh"]
