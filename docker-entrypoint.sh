#!/bin/bash

set -e

# If the database doesn't exist, create it
if ! bundle exec rails db:version; then
  bundle exec rails db:create
fi

# Migrate the database
bundle exec rails db:migrate

# Run the Rails server
bundle exec rails s -b 0.0.0.0
