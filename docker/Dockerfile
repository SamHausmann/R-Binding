
FROM rosetteapi/docker-base-layer:latest
MAINTAINER Sam Hausmann
ENV LANGUAGE=r

ENV API_KEY api_key
RUN apt-get -y update && apt-get install -y \
    r-base \
    r-base-dev \
    libcurl4-openssl-dev \
    r-cran-rjson \
    libssl-dev \
    r-cran-testthat

RUN mkdir /test-dev/tests

CMD ./docker-entrypoint.sh $API_KEY $FILENAME $ALT_URL $GIT_USERNAME $VERSION $LANGUAGE; /bin/bash