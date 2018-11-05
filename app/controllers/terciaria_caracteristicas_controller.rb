class TerciariaCaracteristicasController < ApplicationController
  before_action :set_terciaria_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /terciaria_caracteristicas
  # GET /terciaria_caracteristicas.json
  def index
    @terciaria_caracteristicas = TerciariaCaracteristica.all
  end

  # GET /terciaria_caracteristicas/1
  # GET /terciaria_caracteristicas/1.json
  def show
  end

  # GET /terciaria_caracteristicas/new
  def new
    @terciaria_caracteristica = TerciariaCaracteristica.new
  end

  # GET /terciaria_caracteristicas/1/edit
  def edit
  end

  # POST /terciaria_caracteristicas
  # POST /terciaria_caracteristicas.json
  def create
    @terciaria_caracteristica = TerciariaCaracteristica.new(terciaria_caracteristica_params)

    respond_to do |format|
      if @terciaria_caracteristica.save
        format.html { redirect_to @terciaria_caracteristica, notice: 'Terciaria caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @terciaria_caracteristica }
      else
        format.html { render :new }
        format.json { render json: @terciaria_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terciaria_caracteristicas/1
  # PATCH/PUT /terciaria_caracteristicas/1.json
  def update
    respond_to do |format|
      if @terciaria_caracteristica.update(terciaria_caracteristica_params)
        format.html { redirect_to @terciaria_caracteristica, notice: 'Terciaria caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @terciaria_caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @terciaria_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terciaria_caracteristicas/1
  # DELETE /terciaria_caracteristicas/1.json
  def destroy
    @terciaria_caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to terciaria_caracteristicas_url, notice: 'Terciaria caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terciaria_caracteristica
      @terciaria_caracteristica = TerciariaCaracteristica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terciaria_caracteristica_params
      params.require(:terciaria_caracteristica).permit(:nome)
    end
end
