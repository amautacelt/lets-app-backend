class User < ApplicationRecord
    has_many :activities
    # has_many :activities, dependent: :destroy
end
