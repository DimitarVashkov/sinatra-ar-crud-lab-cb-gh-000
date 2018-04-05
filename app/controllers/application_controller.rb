
require_relative '../../config/environment'
require_relative '../models/post'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    post = Post.create(params[:name],params[:content])
    @posts = Post.all
    erb :index
  end

  get '/posts' do
    @posts = Post.all
    erb :index
  end

  # get '/posts/:id' do
  #   erb :show
  # end
  #
  # get '/posts/:id/edit' do
  #   erb :edit
  # end

end
