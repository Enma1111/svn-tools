FROM alpine:3.24.4
LABEL org.opencontainers.image.source="https://github.com/enma1111/svn-tools" \
      org.opencontainers.image.description="Subversion CLI tools (unofficial)" \
      org.opencontainers.image.licenses="Apache-2.0"
RUN apk add --no-cache subversion ca-certificates \
 && adduser -D -u 1000 tools
USER 1000
WORKDIR /workspace
ENTRYPOINT []