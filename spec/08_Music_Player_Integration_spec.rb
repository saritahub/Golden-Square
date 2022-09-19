require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Music_Library.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Track.rb'

RSpec.describe "integration" do
    context "When we add tracks to the library" do 
        it "comes back in the list" do 
            music_library = MusicLibrary.new
            track_1 = Track.new("my_title_1", "my_artist_2")
            track_2 = Track.new("my_title_2", "my_artist_2")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1, track_2] 
        end 
    end 

    context "with some tracks added" do 
        it "searches for those tracks by full title" do
            music_library = MusicLibrary.new
            track_1 = Track.new("my_title_1", "my_artist_2")
            track_2 = Track.new("my_title_2", "my_artist_2")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("my_title_2")
            expect(result).to eq [track_2]
        end

        it "searches for those tracks by partial title" do
            music_library = MusicLibrary.new
            track_1 = Track.new("my_title_1", "my_artist_2")
            track_2 = Track.new("my_title_2", "my_artist_2")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("title_2")
            expect(result).to eq [track_2]
        end  
    end 
    context "Where there are no tracks matching" do 
        it "yields an empty list when searching" do
            music_library = MusicLibrary.new
            track_1 = Track.new("my_title_1", "my_artist_2")
            music_library.add(track_1)
            result = music_library.search_by_title("cat")
            expect(result).to eq []
        end
    end 

end