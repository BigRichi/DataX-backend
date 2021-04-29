class Launch < ApplicationRecord
  belongs_to :rocket
  belongs_to :launchpad
  has_many :launch_reviews
end
