FROM mcr.microsoft.com/playwright:v1.59.1-jammy

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Run tests with HTML report
CMD ["npx", "playwright", "test", "--reporter=html"]
