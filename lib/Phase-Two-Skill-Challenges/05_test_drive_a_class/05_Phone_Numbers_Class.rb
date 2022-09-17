class PhoneBook
    def initialize
      @all_entries = []
      @passing_numbers = []
      @delimiters = [",", " ", ": "]
    end
  
    def extract_numbers(text)

      @all_entries.push(text)
      @all_entries = @all_entries.join(" ").split(Regexp.union(@delimiters))
    end
  
    def list
      # Returns list of strings representing phone numbers
        @all_entries.each do |num|
            if num[0] == "0" && num.length == 11
                @passing_numbers.push(num)
            end 
        end 
        @passing_numbers.uniq
    end 
end 


  phone_book = PhoneBook.new 

  phone_book.extract_numbers("My faves: 07800000000, 07800000001")
 p  phone_book.list

