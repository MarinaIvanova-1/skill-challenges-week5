class Todo
  def initialize
    @list_of_tasks = []
  end

  def add_task(task) 
    @list_of_tasks << task
  end

  def list
    if  @list_of_tasks.empty?
      fail "There are no tasks in the list"
    end
    return @list_of_tasks.uniq.join(", ")
  end

  def mark_complete(task) 
    if @list_of_tasks.include?(task)
      @list_of_tasks.delete(task)
    else
      fail "There are no such tasks in the list"
    end
  end
end