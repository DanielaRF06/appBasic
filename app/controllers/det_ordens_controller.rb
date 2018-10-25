class DetOrdensController < ApplicationController
  before_action :set_det_orden, only: [:show, :edit, :update, :destroy]

  # GET /det_ordens
  # GET /det_ordens.json
  def index
    @det_ordens = DetOrden.all
  end

  # GET /det_ordens/1
  # GET /det_ordens/1.json
  def show
  end

  # GET /det_ordens/new
  def new
    @det_orden = DetOrden.new
  end

  # GET /det_ordens/1/edit
  def edit
  end

  # POST /det_ordens
  # POST /det_ordens.json
  def create
    @det_orden = DetOrden.new(det_orden_params)

    respond_to do |format|
      if @det_orden.save
        format.html { redirect_to @det_orden, notice: 'Det orden was successfully created.' }
        format.json { render :show, status: :created, location: @det_orden }
      else
        format.html { render :new }
        format.json { render json: @det_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /det_ordens/1
  # PATCH/PUT /det_ordens/1.json
  def update
    respond_to do |format|
      if @det_orden.update(det_orden_params)
        format.html { redirect_to @det_orden, notice: 'Det orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @det_orden }
      else
        format.html { render :edit }
        format.json { render json: @det_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /det_ordens/1
  # DELETE /det_ordens/1.json
  def destroy
    @det_orden.destroy
    respond_to do |format|
      format.html { redirect_to det_ordens_url, notice: 'Det orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_det_orden
      @det_orden = DetOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def det_orden_params
      params.require(:det_orden).permit(:producto_id, :cantidad, :precio_venta)
    end
end
