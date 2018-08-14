# 2. 로또 번호 추천 사이트를 만든다.
# -get '/' {} : 로또추천 이라는 버튼을 만들고 -> '/lotto'
# -get '/lotto' {} : 로또 번호를 추천하는데. 매번 추천된 번호를 lotto.txt 파일에 저장.

require 'sinatra'
require 'uri'
require 'csv'
require 'date'

get '/' do
  erb :index
end

get '/lotto' do
  number = (1..45).to_a
  puts number.sample(6).sort



  erb :search
end
