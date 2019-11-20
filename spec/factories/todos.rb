# spec/factories/todos.rb
FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by { Faker::Name.first_name}
  end
end
