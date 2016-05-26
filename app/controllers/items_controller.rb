class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def create
		render text: params.inspect
	end

	def show
		if @item = Item.where(id: params[:id]).first
		render "items/show"
	else
		render text: "Page not found", status: 404
	end
	end

	def new

	end

	def edit
	end

	def update
	end


end
