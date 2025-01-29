# syntax = docker/dockerfile:1

ARG RUBY_VERSION=3.3.4
FROM ruby:3.3.4

# Set production environment
ENV RAILS_ENV="development" \
    BUNDLE_PATH="./bundle" 

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    build-essential \
    git \
    pkg-config  \
    libpq-dev \
    nodejs \
    default-mysql-client


# RUN mkdir /myapp
# WORKDIR /myapp
# WORKDIR /app

# Install application gems
#COPY Gemfile Gemfile.lock ./
# COPY Gemfile /myapp/Gemfile
# COPY Gemfile.lock /myapp/Gemfile.lock
# RUN bundle config set frozen false
# RUN bundle install

RUN gem update --system

# ADD . /myapp