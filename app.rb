require 'sinatra'

get '/' do
  'Hello world! via ' + ENV['HOSTNAME']
end
