class Pizza 
	attr_reader :name, :description, :time_baked, :toppings

	def initialize(args = {})
		@name = args[:name]
		@description = args[:description] || "Fat"
		@time_baked = args[:time_baked] || 0
		@toppings = []
	end

	def name
		raise ArgumentError unless @name
		@name
	end

end


