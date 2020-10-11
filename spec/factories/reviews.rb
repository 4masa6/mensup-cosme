FactoryBot.define do
  factory :review do
    item_name    {"ほげ化粧品"}
    item_brand   {"ふがブランド"}
    item_maker   {"ぴよ株式会社"}
    rate         {3.0}
    category_id  {3}
    content      {Faker::Lorem.sentence}
    association :user

    after(:build) do |review|
      review.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end