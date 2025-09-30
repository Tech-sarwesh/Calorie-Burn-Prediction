# Use official Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML/CSS/JS files into nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx automatically serves your files, no CMD needed
