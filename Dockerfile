# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your static website content into the Nginx web root directory
# This assumes you have a directory named 'html' containing your website files
COPY . /usr/share/nginx/html

# Expose port 80, which is the default HTTP port Nginx listens on
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
