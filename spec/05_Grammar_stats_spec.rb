require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/05_test_drive_a_class/05_Grammar_stats.rb'

RSpec.describe GrammarStats do 

    describe "check(text) method" do 
    it "returns true if the first character is a capital letter and last character is a punctuation mark" do
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("Def!")
        expect(result).to eq true 
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

    describe "percentage_good method" do 
    it "returns the percentage of passing text as 100.0% if all text passes" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("Def!")
        result = grammarstats.percentage_good
        expect(result).to eq "100.0%"
    end

    it "returns the percentage of passing text as 50.0% if half text passes" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("ef!")
        result = grammarstats.percentage_good
        expect(result).to eq "50.0%"
    end

    it "returns the percentage of passing text as 33.3% if a third of text passes" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("Def")
        result = grammarstats.check("ef!")
        result = grammarstats.percentage_good
        expect(result).to eq "33.3%"
    end

    it "returns the percentage of passing text as 25.0% if a quarter of text passes" do 
        grammarstats = GrammarStats.new
        result = grammarstats.check("Abc!")
        result = grammarstats.check("elf")
        result = grammarstats.check("cat!")
        result = grammarstats.check("text")
        result = grammarstats.percentage_good
        expect(result).to eq "25.0%"
    end
end 

end
end 