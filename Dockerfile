# Use lightweight web server
FROM nginx:alpine

# Copy your web files into nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
