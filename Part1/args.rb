def say_hi(args)
  puts "hi from #{args}"
  yield args
  puts "hi again #{args}"
end

puts "hey #{ARGV.size} args"
p ARGV
say_hi(ARGV) {|args| puts "yielding lala #{args}"}


