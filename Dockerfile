# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the custom configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static files from the host's ./src directory to the container's web root
COPY ./src /usr/share/nginx/html


# Expose port 80 and 443 for the web servers
EXPOSE 80 443

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]