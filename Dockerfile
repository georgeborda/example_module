# Drupal 8 base image with apache
FROM drupal:8-apache

RUN useradd -ms /bin/bash user

# Copy all the files
COPY . /opt/drupal

# Execute composer install to update dependencies
# WORKDIR /opt/drupal
# USER user
# RUN composer install --no-dev

# # Able add images to all users 
# RUN chmod -R 777 /opt/drupal/web/sites/default/files/images_demo

# Update other tools
RUN apt-get update && \
    apt-get install -y git

# Expose port 80
EXPOSE 80