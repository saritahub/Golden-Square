require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/03-Testing-For-Errors/password_checker.rb'

RSpec.describe PasswordChecker do
    it "Password length is greater than 8 and returns true" do
        passwordchecker = PasswordChecker.new
        passwordchecker.check("Testthisplease")
        result = passwordchecker.check("Testthisplease")
        expect(result).to eq true 
        end 

    context "When length is shorter than 8 characters" do
        it "fails" do 
            passwordchecker = PasswordChecker.new
            expect { passwordchecker.check("Test")}.to raise_error "Invalid password, must be 8+ characters."
        end 
    end 
end 



            