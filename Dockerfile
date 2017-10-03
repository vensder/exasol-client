FROM openjdk:8-jre-alpine

RUN apk add --update curl perl && \
	rm -rf /var/cache/apk/* && \
	curl -L https://www.exasol.com/support/secure/attachment/54250/EXASOL_SDK-6.0.3.tar.gz | tar zxv --exclude='doc' && \
	mkdir -p /app && \
	mv EXAplus-6.0.3/exaplus EXAplus-6.0.3/*.jar app && \
	rm -rf EXAplus-6.0.3/

WORKDIR /app
ENTRYPOINT ["/app/exaplus"]
CMD ["--help"]
