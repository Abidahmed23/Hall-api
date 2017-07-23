FactoryGirl.define do
  factory :hall do
  	

	total_seat { Faker::Lorem.word }
	availible { Faker::Lorem.word }
	seat { Faker::Lorem.word }
	new_reculted_list { Faker::Lorem.word }
	border_info { Faker::Lorem.word }
  end
end
