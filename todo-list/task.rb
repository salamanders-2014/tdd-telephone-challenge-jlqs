class Task
  attr_reader :name, :description, :status
  def initialize(args={})
    @name = args[:name]
    @description = args[:description]
    @status = args.fetch(:status) { false }
  end
end
