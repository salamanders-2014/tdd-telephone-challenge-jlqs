require_relative 'topping'
class Pizza 
	attr_reader :name, :description 
	attr_accessor :toppings, :time_baked

	def initialize(args = {})
		@name = args[:name]
		@description = args[:description] || "Fat"
		@time_baked = args[:time_baked] || 0
		@toppings = Array.new
	end

	def name
		raise ArgumentError unless @name
		@name
	end

	def bake(time)
		self.time_baked += time
		@toppings.each {|t| t.time_baked += time }
	end


	def add_toppings(toppings)
		toppings.each do |t|
			self.toppings << t
		end
	end

	def required_bake_time 
		@toppings.reduce(900) { |sum, t| sum + t.required_bake_time }
	end

end
