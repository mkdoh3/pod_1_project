# frozen_string_literal: true

class PropertiesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  private

  def property_params
    params.require(:property).permit(:address, :unit_number, :monthly_cost, :num_bedrooms, :num_bathroom, :square_footage)
  end
end
