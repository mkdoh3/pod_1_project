class ApplicationController < ActionController::Base
    def current_user 
        @user = PropertyManager.find(session[:user_id])
    end 
    
end
