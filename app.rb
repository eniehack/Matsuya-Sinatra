require 'net/http'
require 'uri'
require 'json'
require 'sinatra'

get '/' do
  @title = 'home'
  erb :index
end

get '/don' do
  @title = '丼物一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=don')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  erb :don
end

get '/carry' do
  @title = 'カレー一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=carry')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  erb :carry
end
