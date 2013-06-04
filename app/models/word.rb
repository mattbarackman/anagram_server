class Word < ActiveRecord::Base

  def self.anagrams(word)
    canonical_word = make_canonical(word)
    Word.all.select {|wd| canonical_word == make_canonical(wd.word)}
  end 

  def self.make_canonical(word)  
    word.downcase.split("").sort
  end

end
