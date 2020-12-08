FROM ruby:2.7.2-slim
RUN apt-get update -y
RUN mkdir /awspec
COPY Gemfile /awspec/
WORKDIR /awspec
RUN gem install bundler
RUN bundle install
# COPY in test files
# RUN bundle exec rspec
