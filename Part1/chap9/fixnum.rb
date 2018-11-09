class Fixnum

  alias old_plus +

  def +(other)
    old_plus(other).old_plus(4)
  end
end

puts 1 + 2