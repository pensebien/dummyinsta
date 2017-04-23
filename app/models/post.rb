class Post < ApplicationRecord
    #Add Validation to the Post creation

    validates :image, presence: true

    mount_uploader :image, ImageUploader
end
