require_relative '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/03_Design_A_Single_Method/Exercise_Two_User_Grammar/user_grammar.rb'

RSpec.describe "user_grammar method" do
    it "returns true if the first character is a capital letter and last character is a punctuation mark" do 
        result = user_grammar("Abc!")
        expect(result).to eq true
    end 

    it "returns check grammar phrase when sentence doesn't end in punctation mark" do 
        result = user_grammar("Hey")
        expect(result).to eq "Check grammar, sentence doesn't end in a punctuation mark!"
    end 

    it "returns check grammar phrase when sentence doesn't start with a capital letter" do 
        result = user_grammar("hey!")
        expect(result).to eq "Check grammar, sentence doesn't start with a capital letter!"
    end  

    it "returns check grammar phrase when sentence doesn't start with a capital letter and end with a puncation mark" do 
        result = user_grammar("hey")
        expect(result).to eq "Check grammar, sentence needs to start with a capital letter and end with a puncation mark"
    end 

end