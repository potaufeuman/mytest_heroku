class Relationship < ApplicationRecord
  belongs_to :tested, class_name: "User"
end
