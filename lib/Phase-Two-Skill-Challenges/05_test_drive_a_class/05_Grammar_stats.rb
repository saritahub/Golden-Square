class GrammarStats
    def initialize
      @all_text = []
      @passing_text= []
    end
  
    def check(text) 
      @all_text.push(text)
        if text[0] === text[0].upcase && text[-1] == "!"
            true 
        elsif text[0] == text[0].upcase && text[-1] != "!"
             "Check grammar, sentence doesn't end in a punctuation mark!"
        elsif text[-1] == "!" && text[0] != text[0].upcase 
             "Check grammar, sentence doesn't start with a capital letter!"
        else
             "Check grammar, sentence needs to start with a capital letter and end with a puncation mark"
        end
    end

    def percentage_good
      @all_text.each do |x|
        if x[0] === x[0].upcase && x[-1] == "!"
             @passing_text.push(x)
        end
      end 
      percentage = "#{((@passing_text.length.to_f / @all_text.length) * 100).round(1)}%"
    end
end







