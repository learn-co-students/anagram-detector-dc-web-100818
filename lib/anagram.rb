require 'pry'

class Anagram 
  
  attr_reader :word
  
  def initialize(word)
    @word = word 
  end 
  
  def match(array)
    original = array
    mod_array = array.collect {|string| string.split(//).sort.join}
    mod_string = self.word.split(//).sort.join
    indices = mod_array.each_index.select {|index| mod_array[index] == mod_string}
    if indices.length > 0 
      indices.map {|index| original[index]}
    else 
      indices
    end 
    # binding.pry
  end 
  
  
end 
