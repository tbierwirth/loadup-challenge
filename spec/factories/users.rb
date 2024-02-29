FactoryBot.define do
  factory :user do
    email { "admin@admin.com" }
    password { "password" }
    admin { true }
  end
end