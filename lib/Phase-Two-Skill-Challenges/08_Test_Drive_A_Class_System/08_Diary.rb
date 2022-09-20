class Diary
    def initialize
        @entry = []

    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @entry.push(entry)
    end
  
    def all
      # Returns a list of instances of DiaryEntry
       @entry
    end
  
    def count_words
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
       @count_words = @entry.map do |entry|
        entry.count_words
       end.sum

        @count_words

    end
  
    def reading_time(wpm)
        fail "Reading time must be over zero." unless wpm.positive?
        return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
      no_words_we_can_read = wpm * minutes 
      @read_entry = @entry.filter do |entry|
        entry.reading_time(wpm) <= minutes 
      end   

      sorted = @read_entry.max_by do |entry|
        entry.count_words
      end 

    end
  end