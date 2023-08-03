class Lesson < ApplicationRecord
  belongs_to :language

  has_many :lesson_content, dependent: :destroy
  has_many :lesson_test, dependent: :destroy
  has_many :exercise, dependent: :destroy
end
