FactoryGirl.define do 
	factory :user do
		name 	 "Cameron Jones"
		email 	 "cam@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end