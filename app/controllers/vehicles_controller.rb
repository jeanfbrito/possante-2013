class VehiclesController < InheritedResources::Base
  
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


  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def resource_params
      params.require(:vehicle).permit(:vehicle_brand, :vehicle_model, :fabrication_year, :numberplate)
    end
end