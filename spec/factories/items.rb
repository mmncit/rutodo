# spec/factories/items.rb
FactoryBot.define do
  factory :item do
    name { Faker::Verb.simple_present }
    done { false }
    todo { nil }
  end
end
