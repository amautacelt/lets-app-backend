class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :date_time, :duration, :user

  belongs_to :user
  # has_many :participants


end
