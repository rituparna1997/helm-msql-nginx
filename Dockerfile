# Use an official NGINX image as the base image
FROM nginx:latest

# Copy the MySQL client library from the host machine
COPY mysql-client /usr/local/mysql

# Expose port 80 for the NGINX web server
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
