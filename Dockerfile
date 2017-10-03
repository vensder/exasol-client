FROM openjdk:8-jre-alpine

RUN apk add --update curl perl && \
	rm -rf /var/cache/apk/* && \
	curl -L https://www.exasol.com/support/secure/attachment/51937/EXAplus-6.0.1.tar.gz | tar zxv --exclude='doc' && \
	mkdir -p /app && \
	mv EXAplus-6.0.1/exaplus EXAplus-6.0.1/*.jar app && \
	rm -rf EXAplus-6.0.1/

WORKDIR /app
ENTRYPOINT ["/app/exaplus"]
CMD ["--help"]
