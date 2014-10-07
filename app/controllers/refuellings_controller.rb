class RefuellingsController < InheritedResources::Base
  before_filter :find_vehicle
  def index
    @refuellings = @vehicle.refuellings.order('date desc')#.page(params[:page])
    respond_to do |format|
      format.html
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      #params.require(:refuelling).permit(:date, :km, :liter_price, :total_value, :gas_station)
    end

    def find_vehicle
      @vehicle = Vehicle.friendly.find(params[:vehicle_id])
    end

end