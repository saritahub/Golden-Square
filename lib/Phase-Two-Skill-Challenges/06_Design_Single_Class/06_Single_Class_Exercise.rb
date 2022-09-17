class Task
    def initialize
      @all_tasks = []
    end
  
    def add_task(task)
      @all_tasks.push(task)
    end
    
    def delete_task(taskdelete)
      if @all_tasks.include?(taskdelete)
        @all_tasks.delete(taskdelete)
      else 
        fail "This task doesn't exist."
      end 
    end 
  
    def remind 
      @all_tasks.uniq 
    end

end

