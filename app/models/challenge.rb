class Challenge < ApplicationRecord
  belongs_to :difficulty
  belongs_to :duration
  has_many :user_challenges
end
