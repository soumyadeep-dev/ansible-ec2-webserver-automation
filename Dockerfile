# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the website files to the web server root directory
COPY carvilla-v1.0 /usr/share/nginx/html

# Set correct permissions for the copied files
RUN chown -R nginx:nginx /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
