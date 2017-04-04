class Assignment < ApplicationRecord
  belongs_to :course
  validates :title, presence: true, length: { maximum: 30}
  validates :statement, presence: true
end
