# Use official nginx image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# This is to have nginx listen to index.html by default
COPY nginx.conf /etc/nginx/conf.d/default.conf 

# Copying the static wite is this 'html' folder
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80