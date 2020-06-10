class User < ApplicationRecord
  has_many :recruitments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :name, presence: true
  validates :comment, length: { maximum: 250 }

  has_many :favorites, dependent: :destroy
end
