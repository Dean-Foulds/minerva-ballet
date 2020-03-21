class VisitorsController < ApplicationController 
    skip_before_action :authenticate_user!, only: [ :index ]

    def index 
        respond_to do |format|
        format.html { render "index" }
        end         
    end 
    
    def about
    respond_to do |format|
    format.html { render "about" }
    end 
    end    
end

