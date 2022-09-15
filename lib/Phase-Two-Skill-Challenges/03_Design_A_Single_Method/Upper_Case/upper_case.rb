def extract_uppercase(text)
    words = text.split(" ")
    uppercase_words = words.select do |word|
        word == word.upcase #Selecting words where this condition is true (this returns either true or false)
    end  
    stripped = uppercase_words.map do |word|
        word.gsub(/[^A-Z]/, "") 
    end   
end 