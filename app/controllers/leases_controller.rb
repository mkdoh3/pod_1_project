class LeasesController < ApplicationController
    def index
        @leases = Lease.all
    end
    
    def new 
        @lease = Lease.new 
    end

    def create
        @lease = Lease .new(lease_params)

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
        params.require(:lease).permit(:start_date, :contract_length, :num_tenets)
    end
end