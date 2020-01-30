class TextAnalyzer
  attr_reader :text 

  def initialize(text)
    @text = text.downcase
  end #init

  def count_of_words
    words = text.split(" ")
    words.count 
  end #count_of_words

  def count_of_vowels
    text.scan(/[aeiou]/).count 
  end #count_of_vowels

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end #count_of_consonants

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}
 
    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end
 
    biggest = { arr2.keys.first => arr2.values.first }
 
    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end
 
    biggest
  end #most_used_letter 

end #class
