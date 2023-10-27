FROM php:apache

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Copy contents of document root
COPY --chown=www-data:www-data src /var/www/html

