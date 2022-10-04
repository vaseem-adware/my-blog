class Admin::TagsController < Admin::ApplicationController
	def index
		@tags = Tag.all
		@tags = Tag.paginate(page: params[:page], per_page: 5)
	end
end
