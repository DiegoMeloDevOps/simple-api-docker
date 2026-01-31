# versão para imagem ficar mais leve, usando a mesma versão python da aplicação
FROM python:3.11-slim 
# criando o diretório do app
WORKDIR /app
# copiando as dependencias para o diretório da aplicação
COPY requirements.txt .
# executando comando para instalação da dependencias e sem realizar cache para deixar o build da imagem mais leve
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# expondo a porta 5000 do container
EXPOSE 5000
# Inicia o servidor da aplicação Flask usando Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]