# Your code goes here!
require 'rb-readline'
require 'pry'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  # anagrams = ['enlists', 'google', 'inlets', 'banana']
  def match(anagrams)
    sorted_word = self.word.split('').sort
    matches = []

    anagrams.each do |anagram|
      sorted_anagram = anagram.split('').sort
      if sorted_anagram == sorted_word
        matches << anagram
      end
    end

    matches
  end

end

detector = Anagram.new('listen')
detector.match %w(enlists google inlets banana)
