# 1. fake 검색사이트
# Sinatra 베이스의 앱을 만든다.
# bing.com 을 모사한 사이트를 만든다.
# get '/' {} : 사용자의 입력을 받아 bing 검색을 해주는 <form>을 만든다.
require 'sinatra'

get '/' do
 erb :index
end
