class User < ActiveRecord::Base
  has_many :posts

  has_many :friendships, :class_name => 'Friend', :foreign_key => 'self_id'
  has_many :inverse_friendships, :class_name => 'Friend', :foreign_key => 'friend_id'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
