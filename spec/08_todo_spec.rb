require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_todo.rb'

RSpec.describe Todo do 
    it "returns one task in an array" do
    todo_1 = Todo.new("Task")
    expect(todo_1.task).to eq ["Task"]
    end 
end 











