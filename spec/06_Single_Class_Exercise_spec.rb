require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/06_Design_Single_Class/06_Single_Class_Exercise.rb'

require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/06_Design_Single_Class/06_Phone_Numbers_Class.rb'

RSpec.describe Task do 

    describe "add_task method" do 
      it "Returns an empty list when there is no text input" do
        task = Task.new
        result = task.add_task("")
        result = task.remind
        expect(result).to eq [""]
       end 

       it "Adds tasks to the @all_tasks array" do
        task = Task.new
        result = task.add_task("Grocery shopping")
        result = task.remind
        expect(result).to eq ["Grocery shopping"]
       end 

       it "Adds multiple tasks to the @all_tasks array" do
        task = Task.new
        result = task.add_task("Grocery shopping")
        result = task.add_task("Car wash")
        result = task.remind
        expect(result).to eq ["Grocery shopping", "Car wash"]
       end 

       it "Removes duplicates from the @all_tasks array" do
        task = Task.new
        result = task.add_task("Grocery shopping")
        result = task.add_task("Car wash")
        result = task.add_task("Car wash")
        result = task.remind
        expect(result).to eq ["Grocery shopping", "Car wash"]
       end 

    it "delete_task method checks if taskdelete exists in @all_tasks. If it does, it deletes it." do
        task = Task.new 
        result = task.add_task("Grocery shopping")
        result = task.add_task("Wash car")
        result = task.delete_task("Wash car")
        result = task.remind()
        expect(result).to eq ["Grocery shopping"]
       end 

    context "When delete task doesn't exist" do 
        it "fails" do 
        task = Task.new 
        result = task.add_task("Grocery shopping")
        result = task.add_task("Wash car")
        expect { result = task.delete_task("Clean")}.to raise_error "This task doesn't exist."
        end 
    end 


    end #end for first describe
      


     

end 
