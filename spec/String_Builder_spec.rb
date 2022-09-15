require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/02-Testing-Classes/String_Builder.rb'

RSpec.describe StringBuilder do 
    it "Counts the length of strings" do 
       stringbuilder = StringBuilder.new
       stringbuilder.add("tree")
       result = stringbuilder.size 
       expect(result).to eq 4
    end
    
    it "Counts the length of strings" do 
        stringbuilder = StringBuilder.new
        stringbuilder.add("treehouse")
        result = stringbuilder.size 
        expect(result).to eq 9
     end

     it "Returns string str" do 
        stringbuilder = StringBuilder.new
        stringbuilder.add("tree")
        result = stringbuilder.output
        expect(result).to eq "tree"
     end
     it "Returns string str" do 
        stringbuilder = StringBuilder.new
        stringbuilder.add("treehouse")
        result = stringbuilder.output
        expect(result).to eq "treehouse"
     end

     it "Counts the length of strings" do 
        stringbuilder = StringBuilder.new
        stringbuilder.add("tree")
        stringbuilder.add("house")
        result = stringbuilder.size 
        expect(result).to eq 9
     end

     it "Returns string str" do 
        stringbuilder = StringBuilder.new
        stringbuilder.add("tree")
        stringbuilder.add(" ")
        stringbuilder.add("house")
        result = stringbuilder.output
        expect(result).to eq "tree house"
     end
end 
