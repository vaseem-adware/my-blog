class Post < ApplicationRecord

	extend FriendlyId
	friendly_id :title, use: :slugged

	belongs_to :user
	has_many :comments
	has_many :post_tags
	has_many :tags, through: :post_tags
	validates :title, :content, presence: true

	mount_uploader :image, ImageUploader



	private
		def should_generate_new_friendly_id?
  		slug.blank? || title_changed?
		end

end
