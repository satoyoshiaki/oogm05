class User < ApplicationRecord
  has_many :recruitments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :name, presence: true
  validates :comment, length: { maximum: 250 }

  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :active_friendships, foreign_key: 'follower_id', class_name: 'Friendship', dependent: :destroy
  has_many :passive_friendships, foreign_key: 'followed_id', class_name: 'Friendship', dependent: :destroy
  has_many :followers, through: :passive_friendships, source: :follower
  has_many :following, through: :active_friendships, source: :followed


  def follow!(other_user)
    active_friendships.create!(followed_id: other_user.id)
  end
  #フォローしているかどうかを確認する
  def following?(other_user)
    active_friendships.find_by(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    active_friendships.find_by(followed_id: other_user.id).destroy
  end
end
