
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/articles" do
    erb :index
  end
  
  get '/articles/new' do
    erb :new
  end
  
  post "/articles/new" do
    x = Article.create(params[:article])
    x.save
    erb :index
  end
  
end
