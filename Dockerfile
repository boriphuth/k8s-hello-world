FROM ruby:2.5-slim AS builder

# for msgpack gem
RUN apt-get update && \
    apt-get install -y gcc make && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/app
WORKDIR /var/app

RUN bundle install

FROM ruby:2.5-slim

COPY --from=builder /var/app /var/app
COPY --from=builder /usr/local/bundle /usr/local/bundle
WORKDIR /var/app

EXPOSE 8080
CMD [ "./script/server.sh" ]
