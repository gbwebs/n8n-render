# Use n8n with Debian Bullseye base
FROM n8nio/n8n:latest-bullseye

USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678
CMD ["n8n", "start"]

