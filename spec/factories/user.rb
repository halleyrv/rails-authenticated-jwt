FactoryGirl.define do
  factory :user do
    name 'Juan Gonzales' 
    email 'unique@email.com'
    password_digest nil
    type_user FactoryGirl.build(:type_user)
  end
end