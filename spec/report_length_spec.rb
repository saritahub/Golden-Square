require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/01-Testing-Methods/report_length.rb'

RSpec.describe "Check string length" do
    it "returns 'This string was 5 characters long'" do
        result = report_length("horse")
        expect(result).to eq "This string was 5 characters long."
    end 
    it "returns 'This string was 5 characters long'" do
        result = report_length("upgraded iPhone")
        expect(result).to eq "This string was 15 characters long."
    end 
    it "returns 'This string was 5 characters long'" do
        result = report_length("")
        expect(result).to eq "This string was 0 characters long."
    end 
end 