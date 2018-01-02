class Book
  attr_writer :title
  
  def title
    string = @title.split
    lowercase = ["the", "to", "a", "an", "and", "in", "of"]
    
    string.map! do |word| 
      if lowercase.include?(word) 
        word
      else word.capitalize 
      end
    end
    
    string[0] = string[0].capitalize
    string.join(" ")
  end
end
    