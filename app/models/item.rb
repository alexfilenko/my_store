class Item < ActiveRecord::Base
	#attr_accessible :price, :name, :real, :weight, :description

	validates :price, numericality: {greater_than:0, allow_nil: true}
	validates :name, presence: true

	has_many :cart, throught: :positions
	has_many :positions
	has_many :comments, as: :commentable
end

