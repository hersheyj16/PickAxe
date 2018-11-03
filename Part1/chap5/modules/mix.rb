module Debug
	def who_am_i?
		"#{self.class.name} - #{self.object_id}"
	end
	def observer(obj)
		@observer_list ||= []
	end

	def add_observer(obj)
		observers << obj
	end

	def notify_observers
		observer.each {|o| puts "updating...#{o}"}
	end

	def hey_there?
		if (self.class.name == "C1")
			puts "I love C1"
		end
		puts "hey back"
	end
end

class Ob1
	include Debug
	attr_accessor:observer_list
	def intialize
		@observer_list = []
	end
	def add_viewer(viewer)
		    @observer_list << viewer
	end
end

class Ob2 
	include Debug
	attr_accessor:observer_list
	def intialize
		@observer_list = []
	end
	def add_viewer(viewer)
		    @observer_list << viewer
	end
end

class C1
	include Debug
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

class DebugChild < C1 
	def who_am_i?
		puts "I am a child"
	end
end


class C2
	include Debug
	attr_reader :name
	def initialize(name)
		@name = name
	end
end

class Person
	include Comparable
	include Enumerable
	attr_reader :name, :friends
	def initialize(name)
		@name = name
		@friends = [1,2,3]
	end

	def <=>(other)
		self.name <=> other.name
	end

	def each(&block)
		puts "calling each"
		block
	end
end
