require_relative '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/03_Design_A_Single_Method/Challenge/03_Design_Method_Challenge.rb'

RSpec.describe "string_contain_TODO method" do


    it "returns true if string contains '#TODO'" do
        result = string_contain_TODO("#TODO")
        expect(result).to eq true 
    end 

    it "returns true when a sentence contains '#TODO'" do 
        result = string_contain_TODO("String containing #TODO") 
        expect(result).to eq true
    end     

    
    context "Fails if no '#TODO' in string" do 
        it "fails" do 
            expect { string_contain_TODO("string")}.to raise_error "This string doesn't contain #TODO!"
        end 

        it "fails if string doesn't contain '#TODO'" do 
            expect { string_contain_TODO("TODO without a hash symbol")}.to raise_error "This string doesn't contain #TODO!"
        end     
    end 
end     