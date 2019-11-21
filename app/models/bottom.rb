class Bottom < ApplicationRecord
    has_many :codinates
    belongs_to :user
end
