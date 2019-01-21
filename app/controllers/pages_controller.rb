class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :about, :cookie_eu]

    def index
  
    end

    def about
    end

    def cookie_eu
    end

    def admin
      return false
    end
  end