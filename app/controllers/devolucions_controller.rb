class DevolucionsController < ApplicationController
  before_action :set_devolucion, only: [:show, :edit, :update, :destroy]

  # GET /devolucions
  # GET /devolucions.json
  def index
    @devolucions = Devolucion.all
  end

  # GET /devolucions/1
  # GET /devolucions/1.json
  def show
  end

  # GET /devolucions/new
  def new
    @devolucion = Devolucion.new
  end

  # GET /devolucions/1/edit
  def edit
  end

  # POST /devolucions
  # POST /devolucions.json
  def create
    @devolucion = Devolucion.new(devolucion_params)

    respond_to do |format|
      if @devolucion.save
        format.html { redirect_to @devolucion, notice: 'Devolucion was successfully created.' }
        format.json { render :show, status: :created, location: @devolucion }
      else
        format.html { render :new }
        format.json { render json: @devolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devolucions/1
  # PATCH/PUT /devolucions/1.json
  def update
    respond_to do |format|
      if @devolucion.update(devolucion_params)
        format.html { redirect_to @devolucion, notice: 'Devolucion was successfully updated.' }
        format.json { render :show, status: :ok, location: @devolucion }
      else
        format.html { render :edit }
        format.json { render json: @devolucion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devolucions/1
  # DELETE /devolucions/1.json
  def destroy
    @devolucion.destroy
    respond_to do |format|
      format.html { redirect_to devolucions_url, notice: 'Devolucion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devolucion
      @devolucion = Devolucion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devolucion_params
      params.require(:devolucion).permit(:id_devolucion, :fecha_devolucion)
    end
end
