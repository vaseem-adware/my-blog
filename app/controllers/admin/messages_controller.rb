class Admin::MessagesController < Admin::ApplicationController
	def index
		@messages = Message.all
		@messages = Message.paginate(page: params[:page], per_page: 5)
	end

	def show
		@message = Message.find(params[:id])
	end
end
