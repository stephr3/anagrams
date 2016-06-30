require('pry')

class String
  define_method(:is_anagram?) do |string_2|
    target_word = self.split("")
    test_word = string_2.split("")
    if target_word.length.==test_word.length
      target_word.sort.join.==test_word.sort.join
    else
      false
    end
  end
end
