require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/01-Testing-Methods/greet.rb'

describe 'greet' do
    it 'greets Sam' do 
        expect(greet("Sam")).to eq 'Hello, Sam!'
    end 
end