# frozen_string_literal: true

class Property < ApplicationRecord
  has_many :leases
  has_many :property_managers, through: :leases

  validates :address, presence: true, uniqueness: true
  validates :unit_number, uniqueness: true
  validates :monthly_cost, presence: true
  validates :num_bedrooms, presence: true
  validates :num_bathroom, presence: true
  validates :square_footage, presence: true
end
