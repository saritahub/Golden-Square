class Todo
  def initialize(task) 
    @all_tasks = []
    @all_tasks << task 
    @done = false 
  end

  def task
    @all_tasks 
  end

  def mark_done!
    @done = true 
  end

  def done?
    @done 
  end 
end





















##############OLD
# class Todo
#   def initialize(task)
#     @task = task
#     @done = true
#   end

#   attr_reader :task

#   def mark_done!
#     @done = true
#   end

#   def done?
#     @done 
#   end 

# end