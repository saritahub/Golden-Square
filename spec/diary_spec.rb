require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/05_test_drive_a_class/diary.rb'
























############
# RSpec.describe DiaryEntry do
#     it "creates new object with title and contents" do
#         entry1 = DiaryEntry.new("Day 4", "Hello world")
#         expect(entry1.title).to eq "Day 4"
#         expect(entry1.contents).to eq "Hello world"
#     end

#     it "count_words method counts words and returns an integer" do
#        entry = DiaryEntry.new("thetitle", "contents test")
#        expect(entry.count_words).to eq 2
#     end 

#     it "count_words method counts words and returns an integer" do
#         entry = DiaryEntry.new("thetitle", "contents test three")
#         expect(entry.count_words).to eq 3
#     end
    
#     it "reading_time method prints an integer representing the wpm" do 
#         entry = DiaryEntry.new("title", "contents, test, test")
#         expect(entry.reading_time(3)). to eq 1
#     end

#     it "reading_time method prints 134 when the contents is 134 representing the wpm" do 
#         entry = DiaryEntry.new("title", "Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string  Test this long repetitive string  Test this long repetitive string Test this long repetitive string")
#         expect(entry.reading_time(3)). to eq 134
#     end

# end