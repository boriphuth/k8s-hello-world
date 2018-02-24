FROM ruby:2.5-slim

COPY . /var/app
WORKDIR /var/app

RUN bundle install

EXPOSE 8080
CMD [ "./script/server.sh" ]
