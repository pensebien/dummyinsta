class Post < ApplicationRecord
    #Add Validation to the Post creation
    belongs_to :user

    has_many :posts, dependent: :destroy


    validates :user_id, presence: true
    validates :image, presence: true

    mount_uploader :image, ImageUploader
end
