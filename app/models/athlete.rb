class Athlete < ApplicationRecord
  belongs_to :team
  has_many :jobs
end
