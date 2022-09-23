# require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_tasklist.rb'
# require '/Users/saritaradia/Desktop/Projects/Golden-Square/lib/Phase-Two-Skill-Challenges/09_Design_MultiClass_Systems/09_task.rb'

class TaskListOne
  def initialize
    @alltasks = []
    @incomplete = []
    @complete = []
  end
  def add(task) #task is an instance of TaskOne, the other Clas
    @alltasks.push(task)
  end

  def all #returns list of incomplete TaskOne instances
    @alltasks.map do |task|
      if !task.complete?
        @incomplete << task
      end
    end
    return @incomplete
  end

  def completed #Returns list of completed TaskOne instances
    @alltasks.map do |task|
      if task.complete?
        @complete << task
      end
    end
    return @complete
  end


end
