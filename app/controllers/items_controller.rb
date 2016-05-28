class ItemsController < ApplicationController


before_filter :find_item, only: [:show, :edit, :update, :destroy]





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
		unless @item
		render text: "Page not found", status: 404
	end
	end

	def new
		@item = Item.new

	end

	def edit
	end

	def update
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

	private

	def find_item
		@item = Item.find(params[:id])
	end



end
