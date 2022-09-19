# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my music listening
- I want to add tracks I've listened to and see a list of them


## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Music
  def initialize
    # music_list instance array to store list of songs
  end

  def add_song(song) # task is a string
    # No return value
    # Can input songs, which will be added to the music_list array
  end

  def song_list
    # Returns list of songs from the music_list array
  end


end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 Returns empty array if no songs added
music = Music.new 
music = music.add_song("")
result = music.song_list
# => [""]

# 2 Adds one song to the @music_list array
music = Music.new 
result = music.add_song("I'M THAT GIRL: BEYONCE")
result = music.song_list
# => ["I'M THAT GIRL: BEYONCE"]

# 3 Adds two songs to the @music_list array
music = Music.new 
result = music.add_song("I'M THAT GIRL: BEYONCE")
result = music.add_song("COZY: BEYONCE")
result = music.song_list
# => ["I'M THAT GIRL: BEYONCE", "COZY: BEYONCE"]

            

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
