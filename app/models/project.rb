class Project < ApplicationRecord
  belongs_to :funding_round
  belongs_to :user
  has_one :status
end
