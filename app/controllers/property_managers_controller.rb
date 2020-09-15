class PropertyManagersController < ApplicationController

    def index
    
    end

    def new
        @property_manager = Property_manager.new
    end

    def create
        @property_manager = Property_manager.new(property_manager_params)
       if @property_manager.save
        redirect_to property_manager_path(@property_manager)
       else
        render :new
       end
    end

    def edit
        @property_manager = Property_manager.find_by(params_id)
    end

    def update
        @property_manager = Property_manager.find_by(id: params[:id])
        if @property_manager.update
            redirect_to @property_manager
        else 
            render :edit 
        end
    end

    def show
        @property_manager = Property_manager.find_by(id: params[:id])
        
    end

    def destroy
        @property_manager = Property_manager.find_by(id: params[:id])
    end

    private

    def property_manager_params
        params.require(:property_manager).permit(:username, :password)
    end
end
