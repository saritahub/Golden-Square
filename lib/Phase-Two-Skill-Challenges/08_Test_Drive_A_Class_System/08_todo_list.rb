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