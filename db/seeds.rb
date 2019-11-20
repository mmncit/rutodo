# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Faker::Config.locale = 'en-CA'
# generate todo data
20.times do
    Todo.create({
        title: Faker::Lorem.word,
        created_by: Faker::Name.first_name
    })
end
# generate item data
30.times do
    Item.create({
        name: Faker::Verb.simple_present,
        done: [true, false].sample,
        todo_id: Faker::Number.between(from: 1, to: 20)
    })
end