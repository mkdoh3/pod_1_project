# frozen_string_literal: true

class Property < ApplicationRecord
  has_many :leases
  has_many :property_managers, through: :leases
end
