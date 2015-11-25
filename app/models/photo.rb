class Photo < ActiveRecord::Base

	acts_as_list

  belongs_to :user

  mount_uploader :image, PhotoUploader
end
