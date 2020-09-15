class PropertyManagersController < ApplicationController

    def show 
        @property_manager = PropertyManager.find(params[:id])
    end
end
