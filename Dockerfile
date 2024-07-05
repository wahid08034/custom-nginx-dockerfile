# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy static content to the appropriate directory
COPY ./static-content /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80
