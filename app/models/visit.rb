class Visit < ApplicationRecord
  belongs_to :dog
  has_many :provided_services
  has_many :services, through: :provided_services

  validates_presence_of :dog, :visited_on

  validates :services, :length => { :minimum => 1 }
end
