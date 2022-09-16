class GrammarStats
    def initialize
      @array_1 = []
      @array_2 = []
      @array_3 = []
    end
  
    def check(text) # text is a string
        @array_1.push(text)

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
        # @array_1
     
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
        @array_1.each do |x|
          if x[0] === x[0].upcase && x[-1] == "!"
             @array_2.push(x)
          else #x[0] != x[0].upcase && x[-1] != "!"
            @array_3.push(x)
          end
        end 

        p "Array_1 is #{@array_1} all text"
        p "Array_2 is #{@array_2} only true"

        p "Array_3 is #{@array_3} only false"


    end
  end

grammarstats = GrammarStats.new
result = grammarstats.check("Abc!")
result = grammarstats.check("Def!")
result = grammarstats.check("ef!")
p grammarstats.percentage_good





