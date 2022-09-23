require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_task.rb'

RSpec.describe "Taskone" do
  it "returns an empty array when nothing is passed through" do
    task_list = TaskListOne.new
    expect(task_list.all).to eq []
  end

  it "Returns an empty array when nothing passed through" do
    task_list = TaskListOne.new
    expect(task_list.completed).to eq []
  end
end