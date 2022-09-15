require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/03-Testing-For-Errors/present.rb'

RSpec.describe Present do 
    context "When a present has already been wrapped" do
        it "fails" do
          present = Present.new
          present.wrap("Test")
          expect { present.wrap("Second") }.to raise_error "A contents has already been wrapped."
        end
    end
    context "Fail if no contents wrapped"
    it "Fails" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end 
end