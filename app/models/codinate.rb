class Codinate < ApplicationRecord
    belongs_to :top
    belongs_to :bottom
    belongs_to :user
end
