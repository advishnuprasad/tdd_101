#require 'rectangle/square'
module Rectangle
	class Square
		def initialize(a,b)
			@length = a
			@breadth = b
		end
		def build
			if @length == @breadth
				find_area
			else
				return 'Invalid Input'
			end
		end
		def find_area
			@length * @length
		end
	end 
end