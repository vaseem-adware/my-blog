class Message < ApplicationRecord
  has_many :notifications, as: :notifiable
end
