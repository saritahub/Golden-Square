class TaskOne
    def initialize(title)
        @title = title
        @alltasks = []
        @alltasks.push(title)
        @done = false
    end

    def title #Returns title as a string
        @title
    end

    def mark_complete
        @done = true
    end

    def complete?
        @done
    end
end