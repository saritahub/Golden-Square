require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Diary.rb'

RSpec.describe "Diary" do

context "it returns an empty array if no entries" do
    it "has a list of empty entries" do 
        diary = Diary.new
        result = diary.all
        expect(result).to eq [] 
    end 

    it "has a word count of zero" do 
        diary = Diary.new
        result = diary.count_words
        expect(result).to eq 0
    end    
end 


end 