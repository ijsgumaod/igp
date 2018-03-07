class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    respond_to do |format|
      format.html
      format.json {render :json => @reservations}
    end
  end

  def new

  end

  def create
    #@establishment = Establishment.find(params[:establishment_id])
    @reservations = Reservations.new(reservation_params)
    respond_to do |format|
      format.json do
        if @reservations.save
          render :json => @reservations
        else
          render :json => { :errors => @reservations.errors.messages }, :status => 442
        end
      end
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:user_id, :name, :room_id, :check_in, :check_out)
    end
end
