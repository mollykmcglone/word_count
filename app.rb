require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')
set :public_folder, File.dirname('public/css/styles.css')

get('/') do
  erb(:index)
end

get('/count') do
  @check_word = params.fetch("check_word")
  @string_to_check = params.fetch("string_to_check")
  @answer = @string_to_check.word_count(@check_word)
  erb(:count)
end
