class Post < ActiveRecord::Base
  mount_uploader :post_image, PostImageUploader
  belongs_to :users
end