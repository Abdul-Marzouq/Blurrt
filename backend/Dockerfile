# backend/Dockerfile
FROM node:20-alpine

WORKDIR /app

# Copy package files first for caching
COPY package*.json ./

RUN npm install

# Copy rest of the code
COPY . .

EXPOSE 5000

CMD ["npm", "run", "dev"]
