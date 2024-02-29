FactoryBot.define do
    factory :booking do
      first_name { "Tyler" }
      last_name { "Bierwirth" }
      animal_name { "Luna" }
      animal_type { "Cat" }
      hours_requested { rand(2..8) }
      date_of_service { Date.today + rand(1..5).days }
    end
  end