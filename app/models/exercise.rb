class Exercise < ApplicationRecord
  belongs_to :lesson

  has_many :questions, as: :questionable
end
