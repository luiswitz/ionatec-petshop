class Dog < ApplicationRecord
  enum gender: [:male, :female]
  belongs_to :breed
  belongs_to :owner

  validates_presence_of :name, :gender, :breed, :owner
end
