require 'pry'

class String

  def sentence?
     return self.end_with?"."
  end

  def question?
    return self.end_with?"?"
  end

  def exclamation?
    return self.end_with?"!"
  end

  def count_sentences
    bin = []
    check1 = self.end_with?"."
    check2 = self.end_with?"?"
    check3 = self.end_with?"!"
    if self == ""
      return 0
    elsif check3 == false && check1 == false
      return self.split(".").count()
    else 
      return self.gsub("?",".").split("!").join("").split(".").count+1
    end 
  end
end