# ===== build stage =====
FROM node:20-alpine AS build
WORKDIR /app

# cache-friendly install
COPY package*.json ./
RUN npm ci

# source + build
COPY . .
RUN npm run build

# ===== runtime stage =====
FROM nginx:1.27-alpine
RUN rm -rf /usr/share/nginx/html/*

COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
