#FactoryGirl.define do
#  factory :person do
#    sequence(:first_name) {|n| "foo#{n}"}
#    last_name "foobar"
#    email {"#{first_name}@email.com"}
#    email_confirmation {"#{first_name}@email.com"}
#    is_professor false
#  end
#end
