require 'sinatra'
require 'fluent-logger'

logger = Fluent::Logger::FluentLogger.new(nil, :host => 'localhost', :port => 24224)

get '/' do
  logger.post('app.access', {'path' => '/'})
  'Hello world! via ' + ENV['HOSTNAME']
end
