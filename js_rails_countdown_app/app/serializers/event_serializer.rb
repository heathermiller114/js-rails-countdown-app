class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :name
  belongs_to :user

end
