# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my taskes
- I want a program that I can:
    - Add todo tasks to and,
    - See a list of them 

- As a user
- So that I can focus on tasks to complete
- I want to:
    - Mark tasks as complete and, 
    - Have them disappear from the list

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Tasks
  def initialize
    # Store instance arrays here
    # Maybe one to store all of the tasks
    # And one to store the deleted ones?
  end

  def add_task(task) # task is a string
    # No return value
    # Can input tasks, which will be added to an instance array
  end

  def delete_task(taskdelete)
    #User enters existing task
    #Removes task from instance array 
    #If the array includes the task -> delete task
    #If not, fail with error message "This task doesn't exist"

  def remind()
    # Throws an exception if no task is set "No task set"
    # Otherwise, returns a string with the list of tasks 
  end


end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
task = Task.new 
task = task.add_task("Grocery shopping")
# => ["Grocery shopping"]

# 2
task = Task.new 
task = task.add_task("Grocery shopping")
task.remind() # => ["Grocery shopping"]

# 3
task = Task.new 
task = task.add_task("Grocery shopping")
task = task.add_task("Wash car")
task.remind() # => ["Grocery shopping", "Wash car"]

# 4
task = Task.new 
task = task.add_task("Grocery shopping")
task = task.add_task("Wash car")
task.remind() # => ["Grocery shopping", "Wash car"]

# 5
task = Task.new 
task.remind() # => fails with "No task set."

# 6
task = Task.new 
task = task.add_task("Grocery shopping")
task = task.add_task("Wash car")
task = task.delete("Wash car")
task.remind() # => ["Grocery shopping"]

# 7

task = Task.new 
result = task.add_task("Grocery shopping")
result = task.add_task("Wash car")
expect { result = task.delete_task("Clean")}.to raise_error "This task doesn't exist." # => fail
            

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
