# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

- As a user
- So that I can keep track of my music listening
- I want to add tracks I've listened to and see a list of them
- I want to search for tracks by title

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# File: lib/todo_list.rb
class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

# File: lib/todo.rb
class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end

  

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1 - Class Todo
# task method returns one task as string
#UNIT TEST

todo_1 = Todo.new("Task")
todo_1.task 
=> Returns "Task"

#2 Class TodoList and Class Todo
# incomplete method returns all non-done tasks
# INTEGRATION TEST
todo_list = TodoList.new 
todo_1 = Todo.new("Task")
todo_list.add(todo_1)
todo_list.incomplete
=> Returns ["Task"]

#3 Class TodoList and Class Todo
# Returns all complete tasks
# INTEGRATION TEST
todo_list = TodoList.new 
todo_1 = Todo.new("Task")
todo_list.add(todo_1)
todo_1.mark_done!
todo_list.complete
=> Returns ["Task"]

#4
# Checks if task is done
# Returns 'true' if done
# Returns false if not
todo_list = TodoList.new
todo_1 = Todo.new("Task")
todo_list.add(todo_1)
todo_1.mark_done!
todo_1.done? 
=> Returns true 

#5
# Marks all todos as complete
# Returns all todos as complete
todo_list = TodoList.new
todo_1 = Todo.new("Wash car")
todo_2 = Todo.new("Clean room")
todo_list.add(todo_1)
todo_list.add(todo_2)
todo_list.give_up! 
todo_list.complete
=> Returns [todo_1, todo_2]
       

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
