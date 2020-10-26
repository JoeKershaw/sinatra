require 'sinatra'

get '/' do
  "Hello World"
end

get '/home' do
  "Hello there"
end

get '/secret' do
  "Mushrooms are disgusting"
end

get '/cat' do
  '<div>
    <img src="http://bit.ly/1eze8aE" alt="Cute kitten" style="border:dotted red 35px">
  </div>'
end

set :session_secret, 'super secret'
