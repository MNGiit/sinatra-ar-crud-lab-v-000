
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
  
  get "/articles/:id" do
    @article = Article.find(params[:id])
    erb :articles
  end
  
  post "/articles" do
    x = Article.create(params[:article])
    x.save
    erb :index
  end
  
end
