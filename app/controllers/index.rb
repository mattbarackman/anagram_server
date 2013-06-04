get '/' do
  erb :index
end

post '/' do
  @word = params[:user_input]
  @anagrams = Word.anagrams(@word)
  @results = @anagrams.map { |word_object| word_object.word }
  erb :index
  # redirect "/#{@word}"
end

# get '/:word' do
#   @word = params[:word]
#   @anagrams = Word.anagrams(@word)
#   @results = @anagrams.map { |word_object| word_object.word }
#   erb :result
# end

