# frozen_string_literal: true

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

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

  def edit
    @property = Property.find_by_id(params[:id])
  end

  def update 
    @property = Property.find_by_id(params[:id])

    if @property.update(property_params)
      redirect_to @property
    else
      render :edit
    end
  end

  def show
    @property = Property.find_by_id(params[:id])
  end

  def destroy
    @property = Property.find_by_id(params[:id])
    
    @property.destroy

    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:address, :unit_number, :monthly_cost, :num_bedrooms, :num_bathroom, :square_footage)
  end
end