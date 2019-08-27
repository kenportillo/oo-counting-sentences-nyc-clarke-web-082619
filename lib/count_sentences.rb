require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # new_array = []
    # self.split(/[.!?]/).each do |x| 
    #   if x != " "
    #     new_array << x
    #   end 
    # end
    # new_array
    #binding.pry

    arr = self.split(/[.!?]/).select do |x|
      x != ""
    end
    arr.count 
  end

end