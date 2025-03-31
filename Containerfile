# Use an official Apache HTTP Server image
FROM httpd:latest

# Copy index.html to the Apache server directory
COPY index.html /var/www/html/

