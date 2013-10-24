#coding:utf-8
require 'sinatra'

get '*' do
  puts "[#{Time.now},web.rb] Request[#{request.url}] comes from[#{request.user_agent}]"
  pass 
end

get '/' do
  redirect '/index.html'
end

get '/test' do
  "Ya, I'm working."	
end
