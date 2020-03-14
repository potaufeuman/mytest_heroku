FactoryBot.define do
  factory :answer do
    test_id { 1 }
    tested_id { 1 }
    select_A { 1 }
    question { nil }
  end
end
