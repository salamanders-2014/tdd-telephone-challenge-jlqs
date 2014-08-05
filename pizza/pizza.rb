class Pizza 
	attr_reader :name, :description, :time_baked
	def initialize(name = "DefaultPizza", description = "DefaultDes", time_baked = 10)
		@name = name
		@description = description
		@time_baked = time_baked
	end

end