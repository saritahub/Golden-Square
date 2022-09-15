require_relative '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/04_intermezzo_debugging_1/common_letter.rb'

RSpec.describe "common_letter" do 
    it "reads string and puts out o" do
    result =  get_most_common_letter("the roof, the roof, the roof is on fire!")
    expect(result).to eq "o"
    end 
end 