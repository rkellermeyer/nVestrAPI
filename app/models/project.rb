class Project < ApplicationRecord
  belongs_to :funding_round
  belongs_to :user
  belongs_to :status
end
