# Use uma imagem base leve, como Alpine
FROM alpine:latest

# Instale o curl
RUN apk add --no-cache curl

# Copie o script para a imagem
COPY script.sh /usr/local/bin/script.sh

# Dê permissão de execução para o script
RUN chmod +x /usr/local/bin/script.sh

# Defina o script como ponto de entrada da imagem
ENTRYPOINT ["/usr/local/bin/script.sh"]
