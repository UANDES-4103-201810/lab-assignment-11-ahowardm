FactoryBot.define do
  factory :user do
    username "admin"
    email "admin@example.com"
    password "password"
  end

  factory :message do
    user_id 1 # 1
    date Date.today
    content "This is the content of the message"
  end
# Add other factories in here
end