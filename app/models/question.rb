class Question < ApplicationRecord
  belongs_to :test
  has_many :selects, dependent: :destroy
  accepts_nested_attributes_for :selects, allow_destroy: true
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
  belongs_to :answer
  validates :test_id, presence: true
  validates :Q, presence: true
end
