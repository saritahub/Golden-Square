# File: /Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Track.rb

class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist
  end

  def title
    @title 
  end

  def artist
    @artist 
  end

  def format
    return "#{@title} by #{@artist}"
  end
end