class Test < ApplicationRecord
  belongs_to :user
  has_many :tested, through: :relationships, source: :tested
  has_many :questions,    dependent: :destroy
  accepts_nested_attributes_for :questions
  default_scope -> { order(created_at: :desc) } #新しいテスト順に並べ替え
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 50 }
end
