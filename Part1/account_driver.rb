require_relative 'account'

a = Account.new
b = Account.new

p a
p b
p a.greater_balance_than?(b)



