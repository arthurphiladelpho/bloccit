FactoryGirl.define do
  num = rand.round
  factory :vote do
  	value num
    post
    user
  end
end