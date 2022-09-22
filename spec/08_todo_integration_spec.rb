require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_todo.rb'
require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/08_Test_Drive_A_Class_System/08_todo_list.rb'

RSpec.describe "ToDo integration" do
    it "Returns all incomplete tasks" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task")
        todo_list.add(todo_1)
        result = todo_list.incomplete
        expect(result).to eq [todo_1]
    end 

    it "returns one task as completed when one task entered" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task")
        todo_list.add(todo_1)
        todo_1.mark_done!
        expect(todo_list.complete).to eq [todo_1]
    end

    it "returns one completed tasks when multiple tasks entered" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task")
        todo_2 = Todo.new("Wash car")
        todo_3 = Todo.new("Clean room")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        todo_3.mark_done!
        expect(todo_list.complete).to eq [todo_3]
    end

    it "returns two completed tasks when three tasks entered and two complete" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task")
        todo_2 = Todo.new("Wash car")
        todo_3 = Todo.new("Clean room")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        todo_1.mark_done!
        todo_2.mark_done!
        expect(todo_list.complete).to eq [todo_1, todo_2]
    end
    
    it "When task is done it returns true" do 
        todo_list = TodoList.new
        todo_1 = Todo.new("Task")
        todo_list.add(todo_1)
        todo_1.mark_done!
        expect(todo_1.done?).to eq true 
    end 

    it "When task is not done it returns true" do 
        todo_list = TodoList.new
        todo_1 = Todo.new("Task")
        todo_2 = Todo.new("Task two")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        expect(todo_2.done?).to eq false 
    end 
    
    it "returns the incomplete tasks" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task")
        todo_2 = Todo.new("Task")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_1.mark_done!
        expect(todo_list.incomplete).to eq [todo_2]
    end 

    it "returns multiple incompleted tasks" do 
        todo_list = TodoList.new 
        todo_1 = Todo.new("Task one")
        todo_2 = Todo.new("Task two")
        todo_3 = Todo.new("Task three")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.add(todo_3)
        todo_1.mark_done!
        expect(todo_list.incomplete).to eq [todo_2, todo_3]
    end 

    it "marks all tasks as done" do 
        todo_list = TodoList.new
        todo_1 = Todo.new("Wash car")
        todo_2 = Todo.new("Clean room")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        todo_list.give_up! 
        expect(todo_list.complete).to eq [todo_1, todo_2]
    end 
end 