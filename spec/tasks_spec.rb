require 'tasks'

RSpec.describe Todo do
  it "adds tasks to the list and prints them out" do
    task = Todo.new
    task.add_task("Walk the dog")
    expect(task.list).to eq "Walk the dog"
  end

  it "adds multiple tasks to the list and prints them out" do
    task = Todo.new
    task.add_task("Walk the dog")   
    task.add_task("Buy milk")
    expect(task.list).to eq "Walk the dog, Buy milk"
  end

  it "can remove tasks from the list if they are completed" do
    task = Todo.new
    task.add_task("Walk the dog")
    task.add_task("Buy milk")
    task.add_task("Clean the house")
    task.mark_complete("Buy milk")
    expect(task.list).to eq "Walk the dog, Clean the house"
  end

  it "gives an error if there is no such task" do
    task = Todo.new
    task.add_task("Walk the dog")
    expect{ task.mark_complete("Buy coffee") }.to raise_error "There are no such tasks in the list"
  end

  it "returns an error if there are no tasks in the list" do
    task = Todo.new
    expect{ task.list }.to raise_error "There are no tasks in the list"
  end

  it "saves the tasks only once" do
    task = Todo.new
    task.add_task("Walk the dog")
    task.add_task("Buy milk")
    task.add_task("Buy milk")
    expect(task.list).to eq "Walk the dog, Buy milk"
  end


end