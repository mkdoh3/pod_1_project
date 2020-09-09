class ApplicationController < ActionController::Base
    def current_user 
        @user = PropertyManager.first
    end 
    
end
