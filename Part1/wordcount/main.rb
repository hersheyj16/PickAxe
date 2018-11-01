require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

input  = %{The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.}
input = words_from_string(input)
dict = count_frequency(input)
sorted = dict.sort_by {|w, c| c}
p sorted

p sorted.last(5) 
