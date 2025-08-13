FROM n8nio/n8n:latest

# Basic Auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# Render expects the app to listen on $PORT
EXPOSE 5678
CMD ["n8n", "start", "--port", "5678"]
