FROM n8nio/n8n:latest

USER root

# Install ffmpeg on Alpine
RUN apk add --no-cache ffmpeg

USER node

EXPOSE 5678

# Use full path to n8n binary
CMD ["/usr/local/bin/n8n", "start"]


