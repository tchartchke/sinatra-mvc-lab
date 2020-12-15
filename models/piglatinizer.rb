class PigLatinizer
  @@vowels = %w[ a e i o u A E I O U]
  def initialize()
    
  end

  def self.vowels
    @@vowels
  end

  def piglatinize(str)
    words = str.split(' ')
    words.map! do |word|
      if word.size < 2
        word += "way"
      elsif @@vowels.include?(word[0])
        word += "way"
      else
        index = 1
        until @@vowels.include?(word[index])
          index += 1
        end
        word = word[index..-1] + word[0..(index-1)] + "ay"
      end
    end
    words.join(" ")
  end

end