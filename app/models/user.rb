class User < ActiveRecord::Base
  
  acts_as_list	
  mount_uploader :avatar, AvatarUploader
	has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

	def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider 
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.save
    end
  end
end
