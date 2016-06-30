require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @target_word = params.fetch('target_word').downcase
  @test_word_1 = params.fetch('test_word_1').downcase
  @test_word_1_result = @target_word.is_anagram?(@test_word_1)
  @test_word_2 = params.fetch('test_word_2').downcase
  @test_word_2_result = @target_word.is_anagram?(@test_word_2)
  @test_word_3 = params.fetch('test_word_3').downcase
  @test_word_3_result = @target_word.is_anagram?(@test_word_3)

  erb(:results)
end
