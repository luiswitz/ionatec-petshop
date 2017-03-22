class Service < ApplicationRecord
  has_many :provided_services
  has_many :visits, through: :provided_services
  
  validates_presence_of :name, :value
  validates :value, numericality: { greater_than: 0 }
end
