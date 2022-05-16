FROM ruby:2.4


# Installation of dependencies
RUN apt-get update -qq \
  && apt-get install -y build-essential

# Create a directory for our application and set it as the working directory
RUN mkdir -p /var/app

WORKDIR /var/app

# Copy over our application code
ADD . /var/app

RUN bundle install

# Expose port
EXPOSE 4000 8080

# Run our app
CMD bundle exec jekyll serve --config _config_dev.yml --host 0.0.0.0 --port 4000 --trace --livereload --livereload-port 8080 --force_polling