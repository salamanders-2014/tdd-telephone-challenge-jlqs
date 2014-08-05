class Todo
  attr_reader :title, :tasks
  def initialize(args={})
    @title = args[:title]
    @tasks = []
  end

  def add_task(task)
    @tasks.push(task)
  end

end

