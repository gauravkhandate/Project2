# Use the official Nginx image as base image
FROM nginx:latest

# Copy the HTML files to the Nginx default html directory
COPY target/myapp-1.0-SNAPSHOT.jar /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/myapp-1.0-SNAPSHOT.jar

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
