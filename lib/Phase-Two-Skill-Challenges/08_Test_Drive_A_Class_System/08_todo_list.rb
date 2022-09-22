#File: lib/todo_list.rb
class TodoList
  def initialize
    @all_tasks = []
    @completed = []
    @incomplete = []
  end

  def add(todo) 
    @all_tasks << todo 
  end

  def complete
    @all_tasks.map do |task|
      if task.done?
        @completed.push(task)
      end 
    end 
    return @completed

  end

  def incomplete
    @all_tasks.map do |task|
      if !task.done?
        @incomplete.push(task)
      end 
    end 
    return @incomplete
  end

  def give_up!
    @all_tasks.map do |task|
      task.mark_done!
    end
  end

end




















###OLD
# class TodoList
#   attr_accessor :complete

#   def initialize
#     @task_list = []
#     @complete = []
#   end

#   def add(todo) # todo is an instance of Todo
#     # Returns nothing
#     @task_list << todo
#   end

#   def incomplete
#     # Returns all non-done todos
#     @task_list
#   end

#   def complete
#     # Returns all complete todos
#     @task_list.map do |task|
#       if task.done?
#         @complete << task 
#       end 
#     end 
#     return @complete
#     # completed.map do |task|
#     #   task.task
#     # end 
#   end

#   def give_up!
#     # Marks all todos as complete
#     @task_list.select do |task|
#       task.mark_done!
#     end 
#   end
# end