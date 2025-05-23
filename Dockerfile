
FROM node:18


WORKDIR /app


COPY package*.json ./
RUN npm install


COPY . .


EXPOSE 9000

# Start Medusa
CMD ["npx","medusa", "start"]
