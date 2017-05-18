require 'ffaker'

FactoryGirl.define do
  factory :task do |f|
    f.description { FFaker::Lorem.setence }
    f.status { [:todo, :done].sample }
  end
end
