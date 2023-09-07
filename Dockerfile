FROM ruby:3.1-bullseye
RUN apt-get update && apt-get install -y \
	build-essential \
<<<<<<< HEAD
	libpq-dev
=======
	libpq-dev \
	nodejs
>>>>>>> origin/main
WORKDIR /create-playlist

# Bundlerの不具合対策(1)
# RUN gem update --system
# RUN bundle update --bundler

COPY Gemfile Gemfile.lock /create-playlist/
RUN bundle install

# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000

# Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]