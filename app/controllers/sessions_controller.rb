class SessionsController < ApplicationController


    def new
    end


    def create 
        @property_manager = PropertyManager.find_by(username: params[:property_manager][:username])
        if @property_manager && @property_manager.authenticate(params[:property_manager][:password])
            session[:user_id] = @property_manager.id 
            redirect_to property_manager_path(@property_manager)
        end
    end
    



end
