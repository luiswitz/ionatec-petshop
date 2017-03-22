class Owner < ApplicationRecord
  validates_presence_of :name, :phone
  has_many :dogs
end
