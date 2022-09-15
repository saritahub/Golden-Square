require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/02_Test_Drive_A_Single_Method/count_words.rb' 

RSpec.describe "count_words" do
    it "takes a string and returns the word count" do
      result = count_words("This is a test")
      expect(result).to eq 4
    end
    it "takes a blank string and returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end 
 end