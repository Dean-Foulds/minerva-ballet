class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:edit, :index, :about, :cookie_eu]
    before_action :set_event, only: [:edit]
    
    def index
    end

    def members
      @events = Event.all
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

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def event_params
    params.require(:event).permit(:name, :start_time, :end_time)
  end