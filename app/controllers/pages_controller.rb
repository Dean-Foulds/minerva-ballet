class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:members, :edit, :index, :about, :cookie_eu]

    def index
      
    end

    def members
      @meetings = Meeting.all
    end


    def about
    end

    def edit
    end

    def cookie_eu
    end

    def admin
      return false
    end
  end