# Your code goes here!
require "pry"
class Anagram
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def match(anagrams)
    anagrams.select do |word|
      if word.split("").sort == self.name.split("").sort
        word
      end
    end

  end
end
