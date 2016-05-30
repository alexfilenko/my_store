class User < ActiveRecord::Base
	attr_accessor :login

	has_one :cart
	has_many :orders
end
