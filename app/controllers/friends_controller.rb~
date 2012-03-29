class FriendsController < ApplicationController
	def new
		@friend = Friends.new
	end
def create
	@friend = Friends.new
	@friend.name = params[:name]
	@friend.address = params[:address]
	if @friend.save
		redirect_to friends_path, :notice => 'friend successfully added.'
	else
		render :action => 'show'
	end
end
def edit
end
def destroy
end
def show
end
end
