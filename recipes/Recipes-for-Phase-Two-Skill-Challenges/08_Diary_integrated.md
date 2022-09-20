# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

Class Diary
- As a user
- So that I can keep track of my diary entries
- I want to 
  - Add entries
  - Return a list of all instances of DiaryEntry (the OTHER class)
  - Count words (return the number of words in all diary entries) using COUNT_WORDS IN THE OTHER CLASS
  - Output the reading_time 
  - Find the best entry for reading time
    - wpm: Integer representing the number of words a user can read per minute
    - minutes: Integer representing the number of minutes the user has to read
    - Returns an instance of DiaryEntry representing the entry that is closest to (BUT NOT OVER) the length the user can read 
      - in the number of minutes they have given their reading speed

Class DiaryEntry (code complete?)
- As a user
- So that I can input diary entries
- I want to count the number of words in the contnets 
- Work out the reading time as an integer
- Return chunk of contents that the user can read with their reading speed in a given number of minutes 

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

class DiaryEntry
    def initialize(title, contents)
      @title = title
      @contents = contents 
      @furtherest_word_read = 0
    end
  
    def title
      @title 
    end
  
    def contents
      @contents 
    end
  
    def count_words
      @contents_length = @contents.split(" ").length 
    end
  
    def reading_time(wpm) 
      fail "Reading time must be over zero." unless wpm.positive?
      return @reading_time = (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) 
      no_words_we_can_read = wpm * minutes
      start_from = @furtherest_word_read
      end_at = @furtherest_word_read + no_words_we_can_read
      word_list = words[start_from, end_at]
  
      if end_at >= count_words
        @furtherest_word_read = 0
      else 
        @furtherest_word_read = end_at
      end 
      return word_list.join(" ")
  
    end
  
    private
  
    def words 
      return @contents.split(" ")
    end 
end
  
  
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
# Integration test
# Test how to add a diary entry via the Diary Class that is linked with the Class DiaryEntry
#When we add an entry via Diary, this adds it to the empty array in Diary_Entry
diary_entry = DiaryEntry.new 
diary = Diary.new 
result = diary.add("Entry")
result = diary.all
expect(result).to eq ["Entry"]


# 2
# Count_words returns the number of words in all diary entries  
diary_entry = DiaryEntry.new 
diary = Diary.new 
result = diary.add("Entry one")
result = diary.add("Entry two")
result = diary.all #Turns into string
result = diary.count_words 
expect(result).to eq 4

#3
# find_best_entry_for_reading_time(wpm, minutes)
# Work out how many words they can read given the wpm and minutes    
# Return closest but smaller item from  @entry 
# Integration test
diary_entry = DiaryEntry.new("title", "contents")
diary = Diary.new      
result = diary.add("Entry") #return 
result = diary.add("Entry two test")
result = diary.find_best_entry_for_reading_time(1, 1)

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
