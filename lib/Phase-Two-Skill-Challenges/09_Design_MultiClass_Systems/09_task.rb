class Task
    def initialize(task)
        @task = task 
        @all_tasks = []
    end 

    def add(task)   
        @all_tasks << task 
    end
  
    def all
    #Returns a list of Task instances
        @alltasks 
    end 
  
    def complete
    #Returns a list of COMPLETED Task instances
    end
  end 