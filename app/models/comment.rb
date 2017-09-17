class Comment < ApplicationRecord
    belongs_to :idea
    mount_uploader :picture, PictureUploader
    validates_presence_of :user_name, :body
end
