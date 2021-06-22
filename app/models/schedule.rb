class Schedule < ApplicationRecord
  belongs_to :user

  validates :pickup_date, presence: true
  validates :delivery_date, presence: true
  validates :cy, presence: true
  validates :warehouse, presence: true
  validates :bill_number, presence: true
  validates :container, presence: true
  validates :size, presence: true
  validates :container_type, presence: true
  validates :transporter, presence: true
  validates :customer, presence: true
  validates :reference_number, presence: true
end
