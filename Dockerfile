# FROM python:3
# WORKDIR /app
# COPY . .
# CMD ["python","hello.py"]
FROM node:20.11.1-alpine3.19
RUN apk add -U subversion
