class Activity < ApplicationRecord
    belongs_to :user
    has_many :participants
    # has_many :participants, dependent: :destroy
end
