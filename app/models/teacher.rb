class Teacher < ActiveRecord::Base

	def initialize
		@name = args[:name]
		@email = args[:email]
		@phone = args[:phone]
	end

end