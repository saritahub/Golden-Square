require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/05_test_drive_a_class/diary.rb'

RSpec.describe DiaryEntry do 
    context "It creates a diary entry" do 
        it "title method returns title as a string" do 
            diary = DiaryEntry.new("test_title", "test_contents")
            result = diary.title
            expect(result).to eq "test_title" 
        end 
     
        it "contents method returns contents as a string" do 
            diary = DiaryEntry.new("test_title", "test_contents")
            result = diary.contents
            expect(result).to eq "test_contents" 
        end 

        it "count_words method returns contents length as an integer" do 
            diary = DiaryEntry.new("test_title", "test contents please")
            result = diary.count_words
            expect(result).to eq 3
        end 

        it "reading_time returns an integer (2) estimated reading time in minutes when we enter a string of 100 words" do 
            diary = DiaryEntry.new("test_title", "Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string Test this long repetitive string")
            result = diary.count_words
            result = diary.reading_time(50)
            expect(result).to eq 2
        end 

        it "reading_time returns an integer (4) estimated reading time in minutes when we enter a string of 200 words" do 
            diary = DiaryEntry.new("test_title", "Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string Test this long repetitive string")
            result = diary.count_words
            result = diary.reading_time(50)
            expect(result).to eq 4
        end 

        it "returns the ceiling of the number of minutes it takes to read the content" do 
            diary = DiaryEntry.new("title", "test " * 550)
            result = diary.reading_time(200)
            expect(result).to eq 3
        end 

        context "given a wpm of 0" do 
            it "fails" do 
                diary = DiaryEntry.new("title", "test " * 3)
                expect { diary.reading_time(0) }. to raise_error "Reading time must be over zero."
            end 
        end  

        describe "reading_chunk" do 
            context "with contents readable within the given minutes" do 
                it "returns the full contents" do 
                diary = DiaryEntry.new("title", "test " * 3)
                result = diary.reading_chunk(200, 1)
                expect(result).to eq "test test test"
                end

            context "With contents unreadable within the time" do 
                it "returns a readable chunk" do
                    diary = DiaryEntry.new("title", "one two three")
                    result = diary.reading_chunk(2, 1)
                    expect(result).to eq ("one two") 
                end

                it "returns the next chunk, next time called" do 
                    diary = DiaryEntry.new("title", "one two three")
                    result = diary.reading_chunk(2, 1)
                    result = diary.reading_chunk(2, 1) #Called second time
                    expect(result).to eq ("three") 
                end 

                it "restarts after reading the whole contents" do 
                    diary = DiaryEntry.new("title", "one two three")
                    result = diary.reading_chunk(2, 1)
                    result = diary.reading_chunk(2, 1)
                    result = diary.reading_chunk(2, 1) #Called third time
                    expect(result).to eq ("one two") 
                end 

                it "restarts if it finishes exactly on the end" do 
                    diary = DiaryEntry.new("title", "one two three")
                    result = diary.reading_chunk(2, 1)
                    result = diary.reading_chunk(1, 1)
                    result = diary.reading_chunk(2, 1) #Called third time
                    expect(result).to eq ("one two") 
                end 

            end 


            end 






        end 



    end 
end  