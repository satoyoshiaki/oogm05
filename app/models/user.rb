class User < ApplicationRecord
  mount_uploader :icon, ImageUploader
  has_many :recruitments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable

  validates :name, presence: true
  validates :comment, length: { maximum: 250 }

  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :active_friendships, foreign_key: 'follower_id', class_name: 'Friendship', dependent: :destroy
  has_many :passive_friendships, foreign_key: 'followed_id', class_name: 'Friendship', dependent: :destroy
  has_many :followers, through: :passive_friendships, source: :follower
  has_many :following, through: :active_friendships, source: :followed


  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    auth.info.email,
        name:  auth.info.name,
        password: Devise.friendly_token[0, 20],
        image:  auth.info.image
      )
    end

    user
  end




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
  scope :name_search, ->(name){where("name like?", "%#{name}%")}
end
