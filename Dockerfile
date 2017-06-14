FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential

# Postgres
RUN apt-get install -y libpq-dev

# Nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# JS Runtime
RUN apt-get install -y nodejs

ENV APP_HOME /railsDocker
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME




