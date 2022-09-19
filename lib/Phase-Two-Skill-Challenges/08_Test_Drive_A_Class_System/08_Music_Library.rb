#File: /Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Music_Library.rb

class MusicLibrary
    def initialize
      @tracks = []
    end
  
    def add(track) 
      @tracks << track

    end
  
    def all
      @tracks
    end
    
    def search_by_title(keyword) 
      @tracks.select do |track|
        track.title.include?(keyword)
      end 
    end
  end