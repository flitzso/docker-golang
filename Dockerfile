# Use a imagem oficial do Golang como base
FROM golang:1.17-alpine

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo go.mod
COPY go.mod .

# Baixe as dependências
RUN go mod download

# Copie o restante do código fonte
COPY . .

# Build do aplicativo Go dentro do contêiner
RUN go build -o app

# Comando padrão para executar o aplicativo quando o contêiner for iniciado
CMD ["./app"]
