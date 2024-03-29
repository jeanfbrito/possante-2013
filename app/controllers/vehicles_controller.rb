class VehiclesController < InheritedResources::Base
  before_action :authenticate_user!

  def new
    @vehicle = Vehicle.new
    respond_to do |format|
      format.html { render :layout => !request.xhr? }
      format.json { render json: @vehicle }
    end
  end

  def create
    @vehicle = Vehicle.new(resource_params)
    if @vehicle.save
      redirect_to @vehicle, notice: 'Successfully created vehicle.'
    else
      render 'new'
    end
  end

  def show
    @vehicle = Vehicle.friendly.find(params[:id])
    @refuellings = @vehicle.refuellings.order('date desc').limit(10)

    respond_to do |format|
      format.html
    end
  end

  def index
    @vehicles = current_user.vehicles.all
  end


  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:vehicle).permit(:vehicle_brand, :vehicle_model, :fabrication_year, :numberplate, :user_id)
    end
end