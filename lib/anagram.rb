class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possibles)
    matches = []
    letters = word.split('').sort!

    possibles.each do |possible|
      if letters == possible.split('').sort!
        matches << possible
      end
    end

    matches
  end
end
