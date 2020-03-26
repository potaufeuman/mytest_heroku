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

# def properties
#   parse_property = JSON.parse(property) # propertyに不正な値が入っていた場合に例外発生する
#   return [] unless parse_property.is_a?(Array) && parse_property.all? { |prop| prop.is_a?(Hash) }
#   parse_property
# rescue
#   []
# end