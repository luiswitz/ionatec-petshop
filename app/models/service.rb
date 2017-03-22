class Service < ApplicationRecord
  validates_presence_of :name, :value
  validates :value, numericality: { greater_than: 0 }
end
