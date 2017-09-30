from openjdk:8-jre-alpine

RUN apk add --update curl perl && \
	rm -rf /var/cache/apk/* && \
	curl -L https://www.exasol.com/support/secure/attachment/55310/EXAplus-6.0.4.tar.gz | tar zxv --exclude='doc' && \
	mkdir -p /app && \
	mv EXAplus-6.0.4/exaplus EXAplus-6.0.4/*.jar app && \
	rm -rf EXAplus-6.0.4/

WORKDIR /app
