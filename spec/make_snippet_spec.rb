require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Diary/make_snippet.rb'

RSpec.describe "make_snippet" do
    it "takes a string" do
        result = make_snippet("string")
        expect(result).to eq "string"
    end 
    it "returns the first five words" do 
        result = make_snippet("one two three four five")
        expect(result).to eq "one two three four five"
    end
    it "if input is 6 or more words, it returns the first five words and ..." do 
        result = make_snippet("one two three four five six")
        expect(result).to eq "one two three four five..."
    end 
    it "returns empty string if input is empty" do 
        result = make_snippet("")
        expect(result).to eq ""
    end 
end 


