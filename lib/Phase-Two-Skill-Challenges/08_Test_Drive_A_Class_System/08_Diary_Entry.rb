class DiaryEntry

    def initialize(title, contents)
      @title = title
      @contents = contents 
      @furtherest_word_read = 0
    end
  
    def count_words
        return 0 if @contents.empty
        return @contents_length = @contents.count(" ") + 1
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
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  