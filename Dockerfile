# versão mais enxuta para imagem ficar mais leve, usando a mesma versão python da aplicação
FROM python:3.11-alpine  
# criando o diretório do app
WORKDIR /app
# copiando as dependencias para o diretório da aplicação
COPY requirements.txt .
# executando comando para instalação da dependencias e sem realizar cache para deixar o build da imagem mais leve
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# expondo a porta 5000 do container
EXPOSE 5000
# usaremos python para rodar a aplicação "app.py"
CMD ["python", "app.py"]