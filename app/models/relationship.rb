class Relationship < ApplicationRecord
  belongs_to :tested, class_name: "User"
  has_one :test,      dependent: :destroy
end
