# Use Debian variant instead of Alpine
FROM n8nio/n8n:latest-debian

USER root

# Install ffmpeg (Debian/Ubuntu way)
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5679

# Start n8n (binary exists in this image)
CMD ["n8n", "start"]
