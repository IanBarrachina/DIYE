FROM ruby:2-alpine

ENV HTTP_PROXY 'http://89.167.129.32:80'
ENV HTTPS_PROXY 'https://89.167.129.32:80'
ENV http_proxy 'http://89.167.129.32:80'
ENV https_proxy 'https://89.167.129.32:80'

RUN apk add --update --no-cache \
      build-base \
      nodejs \
      tzdata \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev
RUN bundle config build.nokogiri --use-system-libraries

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ENV BUNDLE_PATH /ruby_gems

CMD ["bin/rails", "s", "-b", "0.0.0.0"]