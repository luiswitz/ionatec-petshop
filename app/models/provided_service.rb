class ProvidedService < ApplicationRecord
  belongs_to :visit
  belongs_to :service
end
