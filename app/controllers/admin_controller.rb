class AdminController < ApplicationController

	before_filter :check_if_admin

	def user_count
		@users_count = User.count
	end
			
end
