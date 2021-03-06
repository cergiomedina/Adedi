class EjemplarsController < ApplicationController
  before_action :set_ejemplar, only: [:show, :edit, :update, :destroy]

  # GET /ejemplars
  # GET /ejemplars.json
  def index
    @ejemplars = Ejemplar.all
  end

  # GET /ejemplars/1
  # GET /ejemplars/1.json
  def show
  end

  # GET /ejemplars/new
  def new
    @ejemplar = Ejemplar.new
  end

  # GET /ejemplars/1/edit
  def edit
  end

  # POST /ejemplars
  # POST /ejemplars.json
  def create
    @ejemplar = Ejemplar.new(ejemplar_params)

    respond_to do |format|
      if @ejemplar.save
        format.html { redirect_to @ejemplar, notice: 'Ejemplar was successfully created.' }
        format.json { render :show, status: :created, location: @ejemplar }
      else
        format.html { render :new }
        format.json { render json: @ejemplar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejemplars/1
  # PATCH/PUT /ejemplars/1.json
  def update
    respond_to do |format|
      if @ejemplar.update(ejemplar_params)
        format.html { redirect_to @ejemplar, notice: 'Ejemplar was successfully updated.' }
        format.json { render :show, status: :ok, location: @ejemplar }
      else
        format.html { render :edit }
        format.json { render json: @ejemplar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejemplars/1
  # DELETE /ejemplars/1.json
  def destroy
    @ejemplar.destroy
    respond_to do |format|
      format.html { redirect_to ejemplars_url, notice: 'Ejemplar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ejemplar
      @ejemplar = Ejemplar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ejemplar_params
      params.require(:ejemplar).permit(:id_ejemplar, :talla_ejemplar, :color_ejemplar, :estado_ejemplar, :precio_ejemplar)
    end
end
