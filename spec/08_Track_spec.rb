require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Track.rb'

RSpec.describe Track do 
    #Unit test that only tests Track
    it "Constructs" do 
        track = Track.new("my_title", "my_artist")
        expect(track.title).to eq "my_title"
        expect(track.artist).to eq "my_artist"
    end 

    describe "@format" do 
        it "formats the title and artist into a single string" do 
            track = Track.new("my_title", "my_artist") 
            expect(track.format).to eq "my_title by my_artist" 
        end
    end  
     
end