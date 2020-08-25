# frozen_string_literal: true

class PropertyManager < ApplicationRecord
  has_secure_password
  has_many :leases
  has_many :properties, through: :leases
end
