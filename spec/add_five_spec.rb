require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/01-Testing-Methods/add_five.rb'

RSpec.describe "add_five" do 
    it 'adds five to num' do
        result = add_five(3)
        expect(result).to eq 8
    end 
    it 'adds five to num' do
        result = add_five(10)
        expect(result).to eq 15 
    end 
    it 'adds five to num' do
        result = add_five(-10)
        expect(result).to eq -5 
    end 
end 