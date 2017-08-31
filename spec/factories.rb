FactoryGirl.define do
  factory :company do
    sequence :name do |n|
      "company#{n}"
    end
  end

  factory :job do
   sequence :title do |n|
      "job#{n}"
    end
   description "something cool"
   level_of_interest 3
   city "Denver"
   company
  end
#other stuff hopefully gets put here upon model generation



end
