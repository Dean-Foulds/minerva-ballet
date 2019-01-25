class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:edit, :index, :about, :cookie_eu]

    def index
  
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