File.open("app/words.txt").each do |line|
  word = line.strip
  Word.create(word) unless word.nil?
end
