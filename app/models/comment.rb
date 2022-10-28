class Comment < ApplicationRecord
	belongs_to :post
	has_many :notifications, as: :notifiable

	after_create :generate_notification

	

	private

	def generate_notification
		self.notifications.create
	end



end
