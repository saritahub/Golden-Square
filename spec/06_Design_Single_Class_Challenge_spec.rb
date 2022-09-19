require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/06_Design_Single_Class/06_Design_Single_Class_Challenge.rb'

describe Music do 
    describe "Music class" do
        it "song_list returns an empty array when passed '""' " do
            music = Music.new 
            result = music.add_song("")
            result = music.song_list
            expect(result).to eq [""]  
        end 

        it "Adds one song to the @music_list array" do 
          music = Music.new 
          result = music.add_song("I'M THAT GIRL: BEYONCE")
          result = music.song_list
          expect(result).to eq ["I'M THAT GIRL: BEYONCE"]
        end 

        it "Adds two songs to the @music_list array" do 
          music = Music.new 
          result = music.add_song("I'M THAT GIRL: BEYONCE")
          result = music.add_song("COZY: BEYONCE")
          result = music.song_list
          expect(result).to eq ["I'M THAT GIRL: BEYONCE", "COZY: BEYONCE"]
        end 

    end



end 