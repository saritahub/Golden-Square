require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Music_Library.rb'

RSpec.describe MusicLibrary do 
    #Unit test that only tests Music Library 
    context "intially" do 
        it "is empty" do 
            music_library = MusicLibrary.new
            expect(music_library.all).to eq []
        end 

        it "responds to searches with an empty list" do 
            music_library = MusicLibrary.new
            expect(music_library.search_by_title("car")).to eq []
        end 
    end 
end 