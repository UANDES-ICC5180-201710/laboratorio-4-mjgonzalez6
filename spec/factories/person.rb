FactoryGirl.define do
  factory :person do
    first_name "Dorian"
    last_name "Gray"
    email "dgray@email.com"
    email_confirmation "dgray@email.com"
    is_professor false
  end

  factory :teacher, class: Person do
    first_name "Oscar"
    last_name "Wile"
    email "owilde@email.com"
    email_confirmation "owilde@email.com"
    is_professor true
  end
end
