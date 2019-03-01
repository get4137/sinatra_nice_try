require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'

def under_construction
  @tittle = 'Something'
  @message = 'This page is under construction'
  erb :message
end
get '/contacts' do
  under_construction
  end
get '/faq' do
  under_construction
end
get '/something' do
  under_construction
end
get '/' do
  erb :index
end
post '/' do
  @login = params[:aaa]
  @password = params[:bbb]
  if @login == 'admin' && @password == 'secret'
    erb :welcome
  elsif @login == 'admin' && @password == 'admin'
      @authorization = 'ha-ha, nice try, false'
      erb :index
  else
    @authorization = 'false'
    erb :index
  end
end