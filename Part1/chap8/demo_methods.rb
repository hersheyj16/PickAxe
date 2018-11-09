def cat_meow(cat1 = "jenny", cat2 = "sarah", cat3 = "jasmine")
  puts "cat1 #{cat1} meows and #{cat2} and #{cat3} #{ARGV}"
end


cat_meow("la", "dee", "d")


def varargs(arg1, *rest)
  "arg1=#{arg1}. rest=#{rest.inspect}"
end

demo = varargs("la", "dee", "da")
puts demo


class FriendFinder
  def initialize(name, &block)
    @name, @block = name, block
  end

  def findMeFriend(friend)
    "#@name on #{friend} = #{ @block.call(friend) }"

  end
end

ff = FriendFinder.new("jenny"){|p| p }
puts ff.findMeFriend("hersh")

class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end
  def get_tax(amount)
    "#@name on #{amount} = #{ @block.call(amount) }" end
end
tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075 }
puts tc.get_tax(100) # => "Sales tax on 100 = 7.5"
puts tc.get_tax(250) # => "Sales tax on 250 = 18.75"