class SomeClass
  def []=(*params)
    puts params
    value = params.pop
    puts "Index with #{params.join(', ')}"
    puts "value #{value} and value.inspect #{value.inspect}"
  end
end

s = SomeClass.new
s[1, 2, 3] = "hello"

alias old_backquote `


class T
  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end

  def !=(other)
    puts "!= type comparing self == #{other}"
    # other == "value"
    return true
  end

end

File.foreach("ordinal") do |line|
  if (($. == 1) || ($. == 3))
    puts $_
  end
end