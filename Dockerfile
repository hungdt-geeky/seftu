FROM ruby:3.0.1

# Install dependencies
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
		apt-get update && apt-get install -qq -y \
	  build-essential libpq-dev zlib1g-dev liblzma-dev nodejs yarn

# Set an environment variable to specify the app's directory
ENV RAILS_ROOT /var/www/app

# Create the app's directory
RUN mkdir -p $RAILS_ROOT

# Set the working directory to the app's directory
WORKDIR $RAILS_ROOT

# Add the Gemfile and Gemfile.lock to the app's directory
ADD Gemfile Gemfile.lock $RAILS_ROOT/

# Install gems
RUN bundle config set path "/bundle"
RUN bundle check || bundle install

# Add the rest of the app's code to the app's directory
ADD . $RAILS_ROOT

# Expose the default Rails server port
EXPOSE 3000

# Set the command to start the Rails server using the docker-entrypoint.sh script
CMD ["bash", "./docker-entrypoint.sh"]
