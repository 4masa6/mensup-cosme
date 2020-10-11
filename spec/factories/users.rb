FactoryBot.define do
  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"a0000000"}
    password_confirmation {password}
    first_name {"太郎"}
    last_name {"田中"}
    first_name_kana {"タロウ"}
    last_name_kana {"タナカ"}
    age_id {2}
    skintype_id {2}
  end
end
