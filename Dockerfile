FROM n8nio/n8n:latest

USER root

# Install ffmpeg on Alpine
RUN apk add --no-cache ffmpeg

USER node

EXPOSE 5679
CMD ["n8n", "start"]

