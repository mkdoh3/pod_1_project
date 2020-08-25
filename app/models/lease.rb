# frozen_string_literal: true

class Lease < ApplicationRecord
  belongs_to :property_manager
  belongs_to :property
end
