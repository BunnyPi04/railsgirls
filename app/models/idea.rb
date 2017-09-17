class Idea < ApplicationRecord
    has_many :comments
    has_many :thanks
    mount_uploader :picture, PictureUploader
end
