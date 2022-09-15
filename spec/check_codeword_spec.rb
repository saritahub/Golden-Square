require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/01-Testing-Methods/check_codeword.rb'

RSpec.describe "check_codeword" do
    it "returns 'Correct! Come in' if codeword is horse" do
      result = check_codeword("horse")
      expect(result).to eq "Correct! Come in."
    end 
    it "returns 'Close, but nope.' if codeword starts with h and ends with e" do
      result = check_codeword("hose")
      expect(result).to eq "Close, but nope."
    end
    it "returns 'WRONG!' if codeword is tree" do
    result = check_codeword("tree")
    expect(result).to eq "WRONG!"
    end 
    it "returns 'WRONG!' if codeword is blank" do
        result = check_codeword("")
        expect(result).to eq "WRONG!"
    end 
end 
