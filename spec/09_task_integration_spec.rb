require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_tasklist.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_task.rb'

RSpec.describe "Task integration" do
  it "Adds one task and returns it" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_list.add(task_1)
    expect(task_list.all).to eq [task_1]
  end

  it "Adds multiple tasks and returns it" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_2 = TaskOne.new("Run")
    task_3 = TaskOne.new("Sprint")
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    expect(task_list.all).to eq [task_1, task_2, task_3]
  end

  it "Marks a task as complete, returns true for completed task" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_2 = TaskOne.new("Run") #Complete = true
    task_list.add(task_1)
    task_list.add(task_2)
    task_2.mark_complete
    expect(task_2.complete?).to eq true
  end

  it "Marks a task as complete, returns false for incompleted task" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_2 = TaskOne.new("Run") #Complete = true
    task_list.add(task_1)
    task_list.add(task_2)
    task_2.mark_complete
    expect(task_1.complete?).to eq false
  end

  it "Marks task as complete, returns incomplete task" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_2 = TaskOne.new("Run")
    task_3 = TaskOne.new("Sprint")
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    task_2.mark_complete
    expect(task_list.all).to eq [task_1, task_3]
  end

  it "Marks task as complete, returns completed tasks" do
    task_list = TaskListOne.new
    task_1 = TaskOne.new("Walk")
    task_2 = TaskOne.new("Run")
    task_3 = TaskOne.new("Sprint")
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    task_2.mark_complete
    expect(task_list.completed).to eq [task_2]
  end

end 