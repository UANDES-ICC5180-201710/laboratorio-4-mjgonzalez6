class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assignment
  validates :value, presence: true, numericality: true,
    inclusion: { in: 1..7}
  belongs_to :student, class_name: 'Person', foreign_key: 'person_id'
end
