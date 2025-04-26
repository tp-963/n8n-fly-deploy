FROM n8nio/n8n:latest

# Zapne základní ochranu
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=MojeHeslo123

# Kde n8n ukládá data
ENV N8N_USER_FOLDER=/home/node/.n8n

EXPOSE 5678
ENTRYPOINT ["tini", "--", "n8n"]
