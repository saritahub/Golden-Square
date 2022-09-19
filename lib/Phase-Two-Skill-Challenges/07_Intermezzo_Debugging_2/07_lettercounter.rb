class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def is_letter(letter)
        return letter =~ /[a-z]/ #Returns D, the first letter 
                                  # =~: Regex match operator 
                                  # /[a-z]/i: letters a-z, case insensitive. Removed the 'i', now get most common letter 
      end

    def calculate_most_common()
        # binding.irb
      counter = Hash.new # {}  // nil to start with. First loop: {}
      most_common = 0 #was nil
      most_common_count = 1
      @text.chars.each do |char|
        # binding.irb
        next unless is_letter(char) #["D", "i", "g", "i", "t", "a", "l", " ", "P", "u", "n", "k"] 
        counter[char] = (counter[char] || 1) + 1 #OUTPUT: 2 for first loop, then adds 1 for each loop
        
        if counter[char] > most_common_count
          most_common = char  #First loop: 0. Second loop: i
          most_common_count = (counter[char]) - 1  #NEEDS TO BE 2. First loop: 1. Second loop: 4
        end #7 output on first loop, then nil 
      end
     
     
    #   binding.irb 
    return [most_common_count, most_common]

    end
  
    # private
  

  end
  
  counter = LetterCounter.new("Digital Punk") 
  p counter.calculate_most_common 
  
  # Intended output:
  # [2, "i"]