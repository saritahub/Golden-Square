require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/05_test_drive_a_class/05_Grammar_stats.rb'

RSpec.describe GrammarStats do

    describe "check(text) method" do
    it "returns true if the first character is a capital letter and last character is a punctuation mark" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("Def!")
        expect(result).to eq ["Abc!", "Def!"] 
    end 

    it "returns check grammar phrase when sentence doesn't end in punctation mark" do 
        grammarstats = GrammarStats.new 
        result = grammarstats.check("Hey")
        expect(result).to eq "Check grammar, sentence doesn't end in a punctuation mark!"
    end 

    it "returns check grammar phrase when sentence doesn't start with a capital letter" do 
        grammarstats = GrammarStats.new 
        result = grammarstats.check("hey!")
        expect(result).to eq "Check grammar, sentence doesn't start with a capital letter!"
    end  

    it "returns check grammar phrase when sentence doesn't start with a capital letter and end with a puncation mark" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("hey")
        expect(result).to eq "Check grammar, sentence needs to start with a capital letter and end with a puncation mark"
    end 
end 


end