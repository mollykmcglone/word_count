require('pry')
class String
  define_method(:word_count) do |check_word|
    input_words = self.downcase.gsub(/[^\w\s\d]/, '').split
    check_word_new = check_word.downcase.gsub(/[^\w\s\d]/, '')
    answer = 0
    input_words.each do |word|
      if word == check_word_new
      answer += 1
      end
    end
    answer
  end
end
