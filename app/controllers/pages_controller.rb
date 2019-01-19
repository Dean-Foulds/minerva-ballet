class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :about], raise: :false
  
    def index

    end

    def about
    end
    
  end