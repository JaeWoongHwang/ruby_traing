require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'data_mapper'
require './model.rb' # 데이터베이스 관련 파일 (model)

set :bind, '0.0.0.0'
enable :sessions # 내가 앱에서 세션을 활용할거양

get '/' do
  # @questions = Question.all #["첫번째 질문", "두번째 질문", ...]
  @posts = Post.all.reverse
  erb :index
end

get '/new' do

  Post.create(
    # 해쉬형태로 키와 값을 넣어줌
    # :title => "날아온 제목",
    # :body => "날아온 내용",
    :title => params["title"],
    :body => params["content"]
  )
end
