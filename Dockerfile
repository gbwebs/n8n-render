FROM n8nio/n8n:latest

USER root

# Install ffmpeg on Alpine
RUN apk add --no-cache ffmpeg

USER node

EXPOSE 5678

# Call the binary directly (works in Alpine builds)
ENTRYPOINT ["tini", "--"]
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
