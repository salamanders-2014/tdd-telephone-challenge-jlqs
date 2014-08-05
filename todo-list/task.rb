class Task
  attr_reader :name, :description, :status
  def initialize(args={})
    @name = args[:name] || "Cheese Pizza"
    @description = args[:description] || "No Toppings"
    @status = args.fetch(:status, false)
  end
end
