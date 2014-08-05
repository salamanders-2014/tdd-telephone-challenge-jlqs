class Task
  attr_reader :name, :description
  attr_accessor :status
  def initialize(args={})
    @name = args[:name]
    @description = args[:description]
    @status = args[:status] || "incomplete"
  end

  def mark_as_complete!
    self.status = "complete"
  end

  def mark_as_incomplete!
    self.status = "incomplete"
  end

  def complete?
    self.status == "complete"
  end
end
