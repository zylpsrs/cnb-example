require 'sinatra'

set :bind, '0.0.0.0'
set :port, 9080

get '/' do
  'Hello World!'
end
