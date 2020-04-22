FROM google/cloud-sdk:288.0.0-alpine

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh python3"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
