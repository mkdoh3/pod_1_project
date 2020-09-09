# frozen_string_literal: true

class Lease < ApplicationRecord
  belongs_to :property_manager
  belongs_to :property

  accepts_nested_attributes_for :property, reject_if: :all_blank

  # def property_attributes=(attributes)
  #   property = Property.find_or_create_by(attributes)
  #   self.property = property
  # end
end
