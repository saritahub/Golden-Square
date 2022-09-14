require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/02-Testing-Classes/counter.rb'

RSpec.describe Counter do
    it "Adds num to the counter, and outputs a string" do
        counter = Counter.new
        counter.add(5)
        result = counter.report 
        expect(result).to eq "Counted to 5 so far."
    end 
    it "Adds num to the counter, and outputs a string" do
        counter = Counter.new
        counter.add(5)
        counter.add(5)
        result = counter.report 
        expect(result).to eq "Counted to 10 so far."
    end 
    it "Adds num to the counter, and outputs a string" do
        counter = Counter.new
        counter.add(0)
        result = counter.report 
        expect(result).to eq "Counted to 0 so far."
    end 
    it "Adds num to the counter, and outputs a string" do
        counter = Counter.new
        counter.add(-5)
        counter.add(-10)
        result = counter.report 
        expect(result).to eq "Counted to -15 so far."
    end 
    
end