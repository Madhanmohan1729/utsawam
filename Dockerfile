# ================================
# Stage 1 - Build Frontend (Vite)
# ================================
FROM node:22 AS frontend

WORKDIR /app

# Copy only frontend-related files first (for better caching)
COPY package*.json vite.config.js ./
COPY resources ./resources

RUN npm install

# Build assets (output goes to /public/build)
RUN npm run build


# ================================
# Stage 2 - Backend (Laravel + PHP + Composer)
# ================================
FROM php:8.2-fpm AS backend

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl unzip libpq-dev libonig-dev libzip-dev zip \
    && docker-php-ext-install pdo pdo_mysql mbstring zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy all backend source code
COPY . .

# ✅ Copy built frontend assets from Vite (Inertia + Laravel uses /public/build)
COPY --from=frontend /app/public/build ./public/build

# Install Laravel dependencies
RUN composer install --no-dev --optimize-autoloader

# Laravel setup
RUN php artisan config:clear && \
    php artisan route:clear && \
    php artisan view:clear

# Start PHP-FPM
CMD ["php-fpm"]
