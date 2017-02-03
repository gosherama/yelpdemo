class Restaurant < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    has_many :reviews
    
    validates :name, :address , :phone, :website , :avatar , presence: true
    validates :phone, format: { with: /\A\(\d{2}\)\d{2}-\d{2}-\d{2}-\d{2}-\d{2}\z/, 
        message: "Must be in the format (xx)xx-xx-xx-xx-xx"}
    validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
        message: "Must start with http:// or https://"}
end
