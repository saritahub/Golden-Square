require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/05_test_drive_a_class/05_Phone_Numbers_Class.rb'

RSpec.describe PhoneBook do 

    describe "extract(text) and list methods" do 
      it "Returns an empty list when there is no text input" do
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("")
        result = phone_book.list 
        expect(result).to eq []
      end 

      it "Extracts a phone number" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("07800000000")
        result = phone_book.list 
        expect(result).to eq ["07800000000"]
      end 

      it "Extracts a phone number from a sentence" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("I called my friend on 07800000000")
        result = phone_book.list 
        expect(result).to eq ["07800000000"]
      end 

      it "Extracts multiple phone numbers from a sentence" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("My faves: 07800000000, 07800000001")
        result = phone_book.list 
        expect(result).to eq ["07800000000", "07800000001"]
      end 

      it "Returns an empty array if there are no phone numbers" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("My faves: ")
        result = phone_book.list 
        expect(result).to eq []
      end 

      it "Removes numbers less than 11 digits" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("My faves: 0780000000")
        result = phone_book.list 
        expect(result).to eq []
      end 

      it "Removes duplicate numbers" do 
        phone_book = PhoneBook.new 
        phone_book.extract_numbers("My friend George: 07800000000")
        phone_book.extract_numbers("My mate George: 07800000000")
        result = phone_book.list 
        expect(result).to eq ["07800000000"]
      end 


    end 

end 
