# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem
- As a user
- So that I can keep track of my tasks
- I want a program I can add my todo tasks to and see a list of them


- As a user 
- So that I can focus on tasks to complete
- I want to mark tasks as complete and have them disappear from the list


## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

Extract nouns and verbs to help create methods and Classes
Nouns
- todo tasks 
- list of todo tasks

Verbs
- mark as complete 
- add

```
(Copied from ASCIIFlow)
┌──────────────────────────────────┐
│   TaskListOne (Class)               │
│   --------                       │
│   Methods                        │
│   - add                          │
│   - list all                     │
│   - completed                    │
│                                  │
│                                  │
│                                  │
│                                  │
└─────────────┬────────────────────┘
              │
              │
              │
              │ TaskList has zero or
              │ more Tasks
              ▼
┌─────────────────────────────────┐
│  TaskOne  (Class)              │
│  --------                       │
│  Methods                        │
│  - mark_complete                │
│  - title                        │
│  - complete?                   │
│                                 │
│                                 │
│                                 │
│                                 │
└─────────────────────────────────┘

```

_Also design the interface of each class in more detail._

```ruby
class TaskOne
  def add(task)
  end

  def all
  #Returns a list of Task instances
  end 

  def complete
  #Returns a list of COMPLETED Task instances
  end
end 

class TaskListOne
  def initalizer(title) #title is a string
  end

  def title
  #Returns title as string
  end 

  def mark_complete
  #Marks task as complete
  #Returns nothing
  end

  def complete?
  #Returns true if completed, otherwise false
  end

end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
TaskList
# 1 Returns all tasks
task_list = TaskListOne.new
task_1 = TaskOne.new("Walk")
task_2 = TaskOne.new("Run")
task_list.add(task_1)
task_list.add(task_2)
task_list.all # => [task_1, task_2]

# 2 Mark a task as complete, returns UNCOMPLETED task
task_list = TaskListOne.new
task_1 = TaskOne.new("Walk")
task_2 = TaskOne.new("Run")
task_list.add(task_1)
task_list.add(task_2)
task_2.mark_complete
task_list.all # => [task_1]

# 3  Mark a task as complete, returns COMPLETED task
task_list = TaskListOne.new
task_1 = TaskOne.new("Walk")
task_2 = TaskOne.new("Run")
task_list.add(task_1)
task_list.add(task_2)
task_2.mark_complete
task_list.complete # => [task_2] 



```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
#TASKLISTONE
#1 
 # => []

#2
task_list = TaskListOne.new
task_list.completed # => []


#Task 
#1 
task = TaskOne.new("Walk")
task.title # => "Walk"

#2 
task = TaskOne.new("Walk")
task.complete? # => false

#3
task = TaskOne.new("Walk")
task.mark_complete
task.complete? # => true

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._