class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recruitment
  validates :content, presence: true
end
