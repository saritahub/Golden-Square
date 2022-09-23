require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_tasklist.rb'

RSpec.describe "TasklistOne" do
  it "Returns the task" do
    task = TaskOne.new("Walk")
    expect(task.title).to eq "Walk"
  end

  it "Returns false if the task is not marked as complete" do
    task = TaskOne.new("Walk")
    expect(task.complete?).to eq false
  end

  it "Returns true if the task is marked as complete" do
    task = TaskOne.new("Walk")
    task.mark_complete
    expect(task.complete?).to eq true
  end
end