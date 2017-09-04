FactoryGirl.define do
  factory :comment do
    content "MyString"
    job nil
  end
  factory :category do
    sequence :name do |n|
      "MyString#{n}"
    end
  end
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
   category
  end



end
