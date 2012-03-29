class ItemsController < ApplicationController
	def index
		@item = Item.all
	end
	def new
		@item = Item.new
	end
	def create
		@item = Item.create(params[:item])
		redirect_to "/items"
	end
	def edit
		@item= Item.find(params[:id])
	end
	def show
		@item = Item.find(params[:id])
	end
	def update
		@item = Item.find(params[:id])
		@item.update_attributes(params[:item])
		redirect_to '/items'
	end
	def delete
		@item= Item.find(params[:id]) 
		if params[:id]
			@item.destroy
		end
		redirect_to("/items")
	end
	
end 
