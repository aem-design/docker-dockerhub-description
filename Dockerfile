FROM    alpine

LABEL   os="centos 7" \
        container.description="push readme to docker hub" \
        version="1.0.0" \
        imagename="dockerhub-description"

MAINTAINER  devops <devops@aem.design>

WORKDIR /app

RUN apk add --no-cache curl

COPY dockerhub.sh ./dockerhub.sh

ENTRYPOINT ["/bin/sh","./app/dockerhub.sh"]
