class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:edit, :index, :gallery, :about, :cookie_eu]
    before_action :set_event, only: [:edit]
    


    def index
      respond_to do |format|
      format.html { render "index" }
      end   
    end

    def members
      @events = Event.all
    end

    def gallery
      respond_to do |format|
      format.html { render "gallery" }
      end 
    end

    def about
      respond_to do |format|
      format.html { render "about" }
      end 
    end

    def edit
      respond_to do |format|
      format.html { render "edit" }
      end 
    end

    def cookie_eu
      respond_to do |format|
      format.html { render "cookie_eu" }
      end 
    end

    def admin
      return false
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end