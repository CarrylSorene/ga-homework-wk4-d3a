require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/pig_latin'

get '/' do
  @title = 'Pig Latin Translator'
  erb :home
end

post '/translate' do
  form_input = params[:translation] #match to form name so it knows which params match
  @result = PigLatin.pig(form_input)
end