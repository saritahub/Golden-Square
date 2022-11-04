# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my music listening
- I want to add tracks I've listened to and see a list of them
- I want to search for tracks by title

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

#File: /Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Music_Library.rb

class MusicLibrary
    def initialize
      # ...
    end

    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
    end

    def all
      # Returns a list of track objects
    end

    def search_by_title(keyword) # keyword is a string
      # Returns a list of tracks with titles that include the keyword
    end
  end

  # File: /Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Track.rb

class Track
    def initialize(title, artist) # title and artist are both strings
    end

    def title
      # Returns the title as a string
    end

    def format
      # Returns a string of the form "TITLE by ARTIST"
    end
  end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 - gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]

# 2 - searches by keyword
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("Carte") # => [track_1]

# 3 - searches by substring too
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("aes") # => [track_2]

# 4 - if no results, search yields empty list
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.search_by_title("zzz") # => []

# 5 - formats individual tracks
track = Track.new("Carte Blanche", "Veracocha")
track.format # => "Carte Blanche by Veracocha"




```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
