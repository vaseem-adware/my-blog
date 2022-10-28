class Admin::TagsController < Admin::ApplicationController
	def index
		@tags = Tag.order(created_at: :desc).paginate(page: params[:page], per_page:10)
		@tag = Tag.new
	end
	
	def create
		all_tags = params[:tag][:name].split(",")
		all_tags.each do |tag_name|
			Tag.create(name: tag_name)
			flash[:notice] = "You have successfully created tags"
		end
		redirect_to admin_tags_path

	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash[:notice] = "You have successfully deleted the tag"
		redirect_back(fallback_location: admin_tags_path) 
	end

end
