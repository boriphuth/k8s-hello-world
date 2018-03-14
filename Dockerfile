FROM ruby:2.5-slim

# for msgpack gem
RUN apt-get update && \
    apt-get install -y gcc make && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/app
WORKDIR /var/app

RUN bundle install

EXPOSE 8080
CMD [ "./script/server.sh" ]
