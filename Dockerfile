# ================================
# Stage 1 - Build Frontend (Vite + Vue + Inertia + Tailwind)
# ================================
FROM node:22 AS frontend

WORKDIR /app

# Copy frontend dependencies and Vite config
COPY package*.json vite.config.ts tsconfig.json ./

# Copy frontend source files
COPY resources ./resources

# Install frontend dependencies
RUN npm install

# Build the frontend (output goes to /public/build)
RUN npm run build


# ================================
# Stage 2 - Backend (Laravel + PHP + Composer)
# ================================
FROM php:8.2-cli AS backend

# Install PHP system dependencies
RUN apt-get update && apt-get install -y \
    git curl unzip libpq-dev libonig-dev libzip-dev zip \
    && docker-php-ext-install pdo pdo_pgsql mbstring zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory for Laravel app
WORKDIR /var/www

# Copy backend code (Laravel app)
COPY . .

# ✅ Copy built frontend assets from Vite (used by Laravel)
COPY --from=frontend /app/public/build ./public/build

# Install Laravel dependencies
RUN composer install --no-dev --optimize-autoloader

# Laravel setup (you can adjust caching here)
RUN php artisan config:clear && \
    php artisan route:clear && \
    php artisan view:clear

# Expose port 8000
EXPOSE 8000

# Start Laravel development server
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]