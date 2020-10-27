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

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/greeting' do
  erb 'Hi there visitor <% 2 + 2 %>!'
end

set :session_secret, 'super secret'
