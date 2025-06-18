# Use official nginx image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into the container
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80