class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments
  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 30}
  validates :email, presence: true, length: { maximum: 50}, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: "Email invalido" }, confirmation: true
  validates :email_confirmation, presence: true

  def to_s
    return first_name + ' ' + last_name
  end

  def to_g
    if is_professor != true
      return first_name + ' ' + last_name
    end
  end
end
