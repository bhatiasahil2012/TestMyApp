class BookController < ApplicationController
	def index
	 @books = Book.all
	end	
	def new
		@book = Book.new
	end
	
	def create
		@book = Book.new(params[:post])
		if @post.save
			flash[:notice] = "post created"
			redirect_to book_path
		else
			render :new
		end
	end
	def edit
		@book = Book.find(params[:id])
	end
	def update
		@book = Book.find[params[:id])
		
		if @book.update_attributes(param[:post])
			flash[:notice] = "post updated"
			redirect_to book_path
		else
			flash[:notice] = "Ops, an error occured"
		end
	end
	def destroy
		@book = Book.find([params:id])
		if @book.destroy
			flash[:destroy] = "Book Deleted"
			redirect_to book_path
		else
			flash[:notice] = "ops an error occured"
			redirect_to book_path
		end
	end
	def show
		@book = Book.find(params[:id])
	end
end		
