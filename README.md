# 🚀 Simple API

Projeto de uma **API simples em Python**, criada com foco em **prática de DevOps e Cloud Computing**, utilizando **Docker** e **Kubernetes** para containerização, orquestração e escalabilidade da aplicação.

Este repositório faz parte do meu portfólio de estudos voltado para vagas de **DevOps / Cloud Júnior**.

---

## 📌 Objetivo

O objetivo deste projeto é aplicar, na prática, conceitos fundamentais como:

- Criação de APIs simples
- Containerização com Docker
- Deploy em Kubernetes
- Configuração de Services, Ingress e HPA
- Testes de carga e escalabilidade
- Boas práticas de organização e infraestrutura como código

---

## 🛠️ Tecnologias Utilizadas

- Python  
- Flask  
- Gunicorn  
- Docker  
- Docker Compose  
- Kubernetes  
- YAML  
- Shell Script  

---

## 📂 Estrutura do Projeto

```bash
SIMPLE-API/
├── k8s/
│   ├── configmap.yaml
│   ├── deployment.yaml
│   ├── hpa.yaml
│   ├── ingress.yaml
│   ├── metrics-server.yaml
│   └── service.yaml
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── teste-de-carga.sh
├── .dockerignore
├── .gitignore
└── README.md

```

## ⚙️ Funcionalidades da API

- API simples para testes de deploy

- Endpoint de health check

- Configurações externas via ConfigMap

- Suporte a múltiplas réplicas no Kubernetes

- Escalonamento automático com Horizontal Pod Autoscaler (HPA)


**Exemplo de endpoint**
```bash
GET /health


Resposta esperada:

{
  "status": "ok"
}

```

## 🐳 Executando com Docker
**Build da imagem**
```bash
docker build -t simple-api .
```
**Executar o container**
```bash
docker run -p 5000:5000 simple-api
```

**A aplicação ficará disponível em:**
```bash
http://localhost:5000
```

## 🐋 Executando com Docker Compose
```bash
docker-compose up --build
```
## ☸️ Deploy no Kubernetes
Aplicar os manifests
```bash
kubectl apply -f k8s/
```
**Verificar pods**
```bash
kubectl get pods
```

**Verificar serviços**
```bash
kubectl get svc
```

## 🌐 Acesso à Aplicação

**Caso o Service esteja configurado como NodePort, o acesso será feito via:**
```bash
http://<IP_DO_NODE>:<NODE_PORT>
```

**Exemplo:**

http://localhost:30007/health

## 📊 Teste de Carga

O projeto conta com um script simples para teste de carga:
```bash
./teste-de-carga.sh
```

Esse teste pode ser utilizado para validar o comportamento da aplicação e o funcionamento do HPA.

## 📈 Boas Práticas Aplicadas

- Separação de código e configuração

- Uso de Gunicorn em ambiente produtivo

- Definição de recursos (CPU e memória)

- Escalonamento automático com HPA

- Infraestrutura como código (IaC)

- Organização de manifests Kubernetes


## 👨‍💻 Autor

Diego José de Melo

São Paulo – SP

Estudante e entusiasta de Cloud Computing e DevOps
