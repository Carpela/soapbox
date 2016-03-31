FactoryGirl.define do
  factory :speaker do
    name {Faker::Name.name}
    sector {Faker::Commerce.department}
    description {Faker::Lorem.paragraph(2, false, 4)}
    phone {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
  end
end
