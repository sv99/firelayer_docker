FROM node:10.12

ARG TAR_FILE
ENV TAR_FILE ${TAR_FILE:-Fair-1701.tar.gz}

RUN mkdir /fire
WORKDIR /fire

COPY ${TAR_FILE} /fire

RUN tar -xzf ${TAR_FILE} && ./install

CMD node fair -s

