require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/03_Design_A_Single_Method/Upper_Case/upper_case.rb'

RSpec.describe "Extract Uppercase method" do
    it "returns an empty string if given an empty string" do
        expect(extract_uppercase("")). to eq []
    end 

    it "returns an empty list if given a string with no uppercase words" do
        expect(extract_uppercase("hello")). to eq []
    end 

    it "returns only the uppercase words given a string with mixed words" do
        result = extract_uppercase("HELLO there")
        expect(result).to eq ["HELLO"]
    end

    it "returns only the uppercase words given a string with uppercase words" do
        result = extract_uppercase("HELLO THERE")
        expect(result).to eq ["HELLO", "THERE"]
    end

    it "treats mixed-cased words as lowercase, and does not return them" do
        result = extract_uppercase("HElLO THeRE")
        expect(result).to eq []
    end

    it "ignores and strips punctuation" do
        result = extract_uppercase("HELLO! THERE!")
        expect(result).to eq ["HELLO", "THERE"]
    end
end
