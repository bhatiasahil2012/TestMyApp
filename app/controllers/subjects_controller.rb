class SubjectsController < ApplicationController
	def index
		#@subjects = Subject.all
		@subjects = Subject.paginate :page => params[:page],:per_page=>2, :order => 'created_at DESC'
	end
	def new
		@subjects = Subject.new
	end
	def create
		@subjects = Subject.new(params[:subject])
		if @subjects.save
			redirect_to "/subjects" , flash[:message] => 'Subject Successfully added.'
		else
			render :action => 'new'
		end
	end
	def edit
		@subjects = Subject.find(params[:id])
	end
	def update
		@subjects = Subject.find(params[:id])
		@subjects.update_attributes(params[:subject])
		redirect_to "/subjects"
	end
	def show
		@subjects = Subject.find(params[:id])
	end
	def delete
		 Subject.delete(params[:id])
		redirect_to "/subjects"
		
	end
	
end
