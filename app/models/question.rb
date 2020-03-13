class Question < ApplicationRecord
  belongs_to :test
  has_many :selects
  # accepts_nested_attributes_for :selects
  validates :test_id, presence: true
  validates :Q, presence: true
end

def index
  
end

def show
  
end

def edit
  
end

def destroy
  
end

def properties
  parse_property = JSON.parse(property) # propertyに不正な値が入っていた場合に例外発生する
  return [] unless parse_property.is_a?(Array) && parse_property.all? { |prop| prop.is_a?(Hash) }
  parse_property
rescue
  []
end