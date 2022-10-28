class Tag < ApplicationRecord
	has_many :post_tags
	has_many :posts, through: :post_tags

	def in_use?
		PostTag.find_by(tag_id: self.id).present?
	end

end
