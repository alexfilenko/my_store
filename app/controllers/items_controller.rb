class ItemsController < ApplicationController
	def index
	end

	def create
		render text: "item created"
	end

	def show
		@item = Item.where(id: params[:id]).first
		render "items/show"
	end

	def new
	end

	def edit
	end

	def update
	end


end
