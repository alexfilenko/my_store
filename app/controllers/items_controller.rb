class ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def create
		item_params = params.require(:item).permit(:price, :name, :real, :weight, :description)
		@item = Item.create(item_params)
		if @item.errors.empty?
			redirect_to item_path(@item)
		else
			render "new"
		end
	end

	def show
		if @item = Item.where(id: params[:id]).first
		render "items/show"
	else
		render text: "Page not found", status: 404
	end
	end

	def new
		@item = Item.new

	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		#item_params = params.require(:item).permit(:price, :name, :real, :weight, :description)
		@item = Item.find(params[:id])
		@item.update_attributes(params[:item]).permit(:price, :name, :real, :weight, :description)
		if @item.errors.empty?
			redirect_to item_path(@item)
		else
			render "edit"
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to action: "index"
	end


end
