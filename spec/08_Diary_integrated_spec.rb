require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Diary_Entry.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_Diary.rb'

RSpec.describe "Diary integration" do 
    context "When we add an entry to the diary" do 
        it "Returns the diary entry" do 
            diary = Diary.new 
            diary_entry = DiaryEntry.new("title", "contents")
            result = diary.add("Entry")
            result = diary.all
            expect(result).to eq ["Entry"]
        end 

        it "counts the total number of words in the diary entries" do 
                diary = Diary.new 
                diary_entry_1 = DiaryEntry.new("title 1", "contents 1")
                diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
                result = diary.add(diary_entry_1)
                result = diary.add(diary_entry_2)
                result = diary.count_words
                expect(result).to eq 4
        end 

        describe "reading time" do
            it "fails when wpm is 0" do 
                diary = Diary.new
                diary_entry = DiaryEntry.new("title", "contents")
                diary.add(diary_entry)
                expect { diary.reading_time(0) }.to raise_error("Reading time must be over zero.")
            end 

            it "calculates the reading time for all entries" do
                diary = Diary.new 
                diary_entry_1 = DiaryEntry.new("title 1", "contents 1")
                diary_entry_2 = DiaryEntry.new("title 2", "contents 2")
                result = diary.add(diary_entry_1)
                result = diary.add(diary_entry_2)
                result = diary.reading_time(2)
                expect(result).to eq 2
            end 

            it "calculates the reading time for entries over a minute" do
                diary = Diary.new 
                diary_entry_1 = DiaryEntry.new("title 1", "contents 1")
                diary_entry_2 = DiaryEntry.new("title 2", "the contents 2")
                result = diary.add(diary_entry_1)
                result = diary.add(diary_entry_2)
                result = diary.reading_time(2)
                expect(result).to eq 3
            end 

            it "has a reading time of 0" do 
                diary = Diary.new 
                expect(diary.reading_time(2)).to eq 0
            end 
        end  

        describe "finds best entry" do 
            context "One entry less than or equal to readable time" do 
                it "returns that entry" do 
                    diary = Diary.new
                    diary_entry = DiaryEntry.new("title", "contents")
                    diary.add(diary_entry)
                    result = diary.find_best_entry_for_reading_time(2, 1)
                    expect(result).to eq diary_entry
                end 
                it "has no entries" do 
                    diary = Diary.new
                    expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
                end 
            end 

            context "one entry unreadable in the time" do 
                it "returns that entry" do 
                    diary = Diary.new
                    diary_entry = DiaryEntry.new("title", "contents " * 3)
                    diary.add(diary_entry)
                    result = diary.find_best_entry_for_reading_time(2, 1)
                    expect(result).to eq nil
                end 
            end
            
            context "Multiple entries" do 
                it "Returns longest entry user can read in a given time" do
                    diary = Diary.new
                    best_entry = DiaryEntry.new("title", "one two")
                    diary.add(DiaryEntry.new("title", "one"))
                    diary.add(best_entry)
                    diary.add(DiaryEntry.new("title", "one two three"))
                    diary.add(DiaryEntry.new("title", "one two three four"))
                    result = diary.find_best_entry_for_reading_time(2, 1)
                    expect(result).to eq best_entry
                end 
            end 
        end   
    end 
end 