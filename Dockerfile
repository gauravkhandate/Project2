# Use the official Nginx image as base image
FROM nginx:latest

# Copy the HTML files to the Nginx default html directory
COPY target/CICD_Project.war /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/CICD_Project.war

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
