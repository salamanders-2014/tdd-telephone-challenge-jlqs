require 'rspec'
require_relative 'todo'
require_relative 'task'

describe Todo do

  before do
    @todo = Todo.new(title: "test")
    @t1 = Task.new(name: "Get a beer", description: "Corona Light")
    @t2 = Task.new(name: "Go for a walk", description: "After this challenge")
  end

  describe '#title' do
    it 'should have a title' do
      expect(@todo.title).to eq("test")
    end
  end

  describe '#tasks' do
    it 'should have many tasks' do
      expect(@todo.tasks.length).to be_an Integer
    end
  end

  describe '#add_task' do
    it "should be able to add task" do
      @todo.add_task(@t1)
      expect(@todo.tasks.length).to eq(1)
      @todo.add_task(@t2)
      expect(@todo.tasks.length).to eq(2)
    end
  end

  describe '#complete_all!' do
    it 'should complete all tasks' do
      @todo.add_task(@t1)
      @todo.add_task(@t2)
      @todo.complete_all!
      expect(@todo.tasks.all? { |t| t.complete? }).to eq(true)
    end
  end

  describe '#complete?' do 
    it 'should returns true if all tasks are completed and false otherwise' do
      @todo.add_task(@t1)
      expect(@todo.complete?).to eq(false)
      @t1.mark_as_complete!
      expect(@todo.complete?).to eq(true)
    end
  end

  describe '#completed_tasks' do
    it 'should returns a list of completed tasks' do
      @todo.add_task(@t1)
      @todo.add_task(@t2)
      @t1.mark_as_complete!
      expect(@todo.completed_tasks.length).to eq(1)
    end
  end

  describe '#incompleted_tasks' do
    it 'should returns a list of incompleted tasks' do
      @todo.add_task(@t1)
      @todo.add_task(@t2)
      @t1.mark_as_complete!
      expect(@todo.incompleted_tasks.length).to eq(1)
    end
  end
end

