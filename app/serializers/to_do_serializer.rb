class ToDoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :state
  has_one :user
end
