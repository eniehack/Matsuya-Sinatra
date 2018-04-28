require 'net/http'
require 'uri'
require 'json'
require 'sinatra'
require 'slim'

get '/' do
  @title = 'home'
  slim :index
end

get '/don' do
  @title = '丼物一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=don')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/curry' do
  @title = 'カレー一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=curry')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/drink' do
  @title = 'ドリンク一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=drink')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/gyuumeshi' do
  @title = '牛めし一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=gyuumeshi')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/morning' do
  @title = '朝食一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=moaning')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/side' do
  @title = 'サイドメニュー一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=sidemenu')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/teishoku' do
  @title = '定食一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=teishuoku')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/udon' do
  @title = 'うどん一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=udon')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/topping' do
  @title = 'トッピング一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=topping')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/premium' do
  @title = 'プレミアム一覧'
  uri = URI.parse('https://matsuya.makotia.me/v4/search?type=premium')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  slim :list
end

get '/random' do
  uri = URI.parse('https://matsuya.makotia.me/v4/random')
  json = Net::HTTP.get(uri)
  @result = JSON.parse(json)
  @title = 'ランダム'
  slim :details
end