#!/usr/bin/env bash

set -eux

bundle exec ruby app.rb -p 8080 -o 0.0.0.0
