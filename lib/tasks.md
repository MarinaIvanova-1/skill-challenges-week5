# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.
> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
class Todo
  def initialize
  end

  def add_task(task) #task is a string
    add a task to the list
    #no return value
  end

  def list_tasks
    #returns a list of tasks
  end

  def mark_complete(task) #task is a string
    removes a task to the list
    #no return value
  end
end
```ruby
_Include the initializer and public methods with all parameters and return values._


## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# 1
task = Todo
task.add_task("Walk the dog")
task.list # => "Walk the dog"

# 2
task = Todo
task.add_task("Walk the dog")
task.add_task("Buy milk")
task.list # => "Walk the dog, Buy milk"

# 3
task = Todo
task.add_task("Walk the dog")
task.add_task("Buy milk")
task.add_task("Clean the house")
task.mark_comlete("Buy milk")
task.list # => "Walk the dog, Clean the house"

# 4
task = Todo
task.list # => "There are no tasks in the list"

# 5
task = Todo
task.add_task("Walk the dog")
task.add_task("Buy milk")
task.add_task("Buy milk")
task.list # => "Walk the dog, Buy milk"

```



## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

