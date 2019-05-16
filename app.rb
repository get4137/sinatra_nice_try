require 'sinatra'

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