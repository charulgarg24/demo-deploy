
#This tells Docker to:

#Use Nginx as a lightweight web server

#Copy your index.html inside it

#Run Nginx when the container starts


# Use a lightweight Nginx image as base
FROM nginx:alpine

# Copy your static HTML file into the web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
