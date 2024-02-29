FactoryBot.define do
  factory :user do
    email { "test_admin@admin.com" }
    password { "password" }
    admin { true }
  end
end