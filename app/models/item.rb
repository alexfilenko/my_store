class Item < ActiveRecord::Base
	#attr_accessible :price, :name, :real, :weight, :description

	validates :price, numericality: {greater_than:0, allow_nil: true}

	after_initialize {puts "initialize"}
	after_save 		 {puts "after_save"}
	after_create	 {puts "after_create"}
	after_update	 {}
	after_destroy	 {}
end

