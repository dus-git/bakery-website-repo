# Base image
FROM nginx:alpine

# Default nginx html folder ko clean karo
RUN rm -rf /usr/share/nginx/html/*

# Apni website copy karo container me
COPY index.html /usr/share/nginx/html/

# Port expose
EXPOSE 80

# Nginx run command
CMD ["nginx", "-g", "daemon off;"]
