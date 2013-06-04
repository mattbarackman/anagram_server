File.open("app/words.txt").each do |line|
  word = line.strip
  Word.create(word: word) unless word.empty?
end
