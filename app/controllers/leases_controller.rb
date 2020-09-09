# frozen_string_literal: true

class LeasesController < ApplicationController
  def index
    @leases = if params[:property_id]
                Lease.where(property_id: params[:property_id])
              else
                Lease.all
              end
  end

  def new
    if params[:property_id]
      @property = Property.find_by_id(params[:property_id])
    end
    @lease = Lease.new
  end

  def create
    @lease = current_user.leases.new(lease_params)
    if @lease.save
      redirect_to lease_path(@lease)
    else
      render :new
    end
  end

  def edit
    @lease = Lease.find_by_id(params[:id])
  end

  def update
    @lease = Lease.find_by_id(params[:id])

    if @lease.update(lease_params)
      redirect_to @lease
    else
      render :edit
    end
  end

  def show
    @lease = Lease.find_by_id(params[:id])
  end

  def delete
    @lease = Lease.find_by_id(params[:id])

    @lease.destroy

    redirect_to leases_path
  end

  private

  def lease_params
    params.require(:lease).permit(:start_date, :contract_length, :num_tenets, :property_id, property_attributes: %i[address unit_number monthly_cost num_bedrooms num_bathroom square_footage])
  end
end
