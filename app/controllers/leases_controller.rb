class LeasesController < ApplicationController
    def new 
        @lease = Lease.new 
    end

    
end
