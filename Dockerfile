FROM openjdk:8-jre-alpine

ARG version="EXAplus-6.0.15"
ARG link="https://www.exasol.com/support/secure/attachment/79638/${version}.tar.gz"

RUN apk add --update curl perl && \
	rm -rf /var/cache/apk/* && \
	curl -L ${link} | tar zxv --exclude='doc' && \
	mkdir -p /app && \
	mv ${version}/exaplus ${version}/*.jar app && \
	rm -rf ${version}/

WORKDIR /app
ENTRYPOINT ["/app/exaplus"]
CMD ["--help"]
