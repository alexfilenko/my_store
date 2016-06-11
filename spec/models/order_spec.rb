require "rails_helper"

describe Order do
	it "go go go" do
	
		item1 = Item.new(price: 10)
		item2 = Item.new(price: 20)
		

		order = Order.new
		order.items << item1
		order.items << item2
		

		order.calculate_total
		expect(order.total).to eq(30)
	end
end