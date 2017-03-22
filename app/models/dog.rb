class Dog < ApplicationRecord
  enum gender: [:male, :female]
  belongs_to :breed
  belongs_to :owner
  has_many :visits

  validates_presence_of :name, :gender, :breed, :owner

  def last_visit
    self.visits.order(:visited_on).last.visited_on
  end
end
