class Shoes
	def initialize(sku, price)
		@sku = sku
		@price = Float(price)
	end

	def to_s
		"this shoe SKU: #{@sku}, is $ #{@price}"
	end
end

shoe1 = Shoes.new(1, 12.00)
p shoe1

shoe2 = Shoes.new(2, 15.00)
p shoe2
puts shoe1
puts shoe2

