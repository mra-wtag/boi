FactoryBot.define do
  factory :book do
    name { 'My Book' }
    identifier { 'my-book' }
    author_id { 1 }
    publisher_id { 1 }
    publication_id { 1 }
    language_id { 1 }
  end
end
