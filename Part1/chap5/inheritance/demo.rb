class Parent
	def say_hello
		puts "hey there #{self}"
	end

	def initialize(name, hobby)
		@name = name
		@hobby = hobby
	end
	def to_s
		"#{@name} and #{@hobby}"
	end
end

class Child < Parent
	def initialize(name)
		super(name, "nothing")
	end
end
