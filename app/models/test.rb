class Test < ApplicationRecord
  belongs_to :user
  has_many :relatioships, foreign_key: "tested_id",
                          dependent: :destroy
  has_many :questions,    dependent: :destroy
  default_scope -> { order(created_at: :desc) } #新しいテスト順に並べ替え
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 50 }
end
