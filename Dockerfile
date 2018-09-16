# Base image:
FROM ruby:2.5.0

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev mysql-client apt-transport-https ca-certificates unzip xvfb chromedriver chromium

# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm install --global yarn

# Install bundler
RUN gem install bundler --no-ri --no-rdoc

# INSTALL CHROME
RUN rm -rf /var/lib/apt/lists/*

