require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-One-Testing-Bites/02-Testing-Classes/reminder.rb'

RSpec.describe Reminder do
  it "Returns the task and name" do
    reminder = Reminder.new("Sam") #Name
    reminder.remind_me_to("Bake")
    result = reminder.remind()
    expect(result).to eq "Bake, Sam!"
  end 
  it "Returns the task and name" do
    reminder = Reminder.new("Mike") #Name
    reminder.remind_me_to("Run")
    result = reminder.remind()
    expect(result).to eq "Run, Mike!"
  end 
  it "Returns the task and name" do
    reminder = Reminder.new("Sarah") #Name
    reminder.remind_me_to("")
    result = reminder.remind()
    expect(result).to eq ", Sarah!"
  end 

end 