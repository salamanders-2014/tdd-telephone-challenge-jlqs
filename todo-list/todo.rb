require_relative 'task'

class Todo
  attr_reader :title, :tasks
  def initialize(args={})
    @title = args[:title]
    @tasks = []
  end

  def add_task(task)
    @tasks.push(task)
  end

  def complete_all!
    @tasks.each { |task| task.mark_as_complete! }
  end

  def complete?
    @tasks.all? { |t| t.complete? }
  end

  def completed_tasks
    @tasks.select { |task| task.complete? }
  end

  def incompleted_tasks
    @tasks.reject { |task| task.complete? }
  end

end

