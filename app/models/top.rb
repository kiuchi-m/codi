class Top < ApplicationRecord
    mount_uploader :image, ImagesUploader
    has_many :codinates
    belongs_to :user
end
