FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler -v 2.1.4
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
EXPOSE 3000

# Start the main process.
CMD ["bundle", "exec", "rails", "server"]