class ToDo < ApplicationRecord
  belongs_to :user
  validates :title, :description, presence: true
  validates_inclusion_of :state, :in => 0..1
end
