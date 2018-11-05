class SecundariaCaracteristicasController < ApplicationController
  before_action :set_secundaria_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /secundaria_caracteristicas
  # GET /secundaria_caracteristicas.json
  def index
    @secundaria_caracteristicas = SecundariaCaracteristica.all
  end

  # GET /secundaria_caracteristicas/1
  # GET /secundaria_caracteristicas/1.json
  def show
  end

  # GET /secundaria_caracteristicas/new
  def new
    @secundaria_caracteristica = SecundariaCaracteristica.new
  end

  # GET /secundaria_caracteristicas/1/edit
  def edit
  end

  # POST /secundaria_caracteristicas
  # POST /secundaria_caracteristicas.json
  def create
    @secundaria_caracteristica = SecundariaCaracteristica.new(secundaria_caracteristica_params)

    respond_to do |format|
      if @secundaria_caracteristica.save
        format.html { redirect_to @secundaria_caracteristica, notice: 'Secundaria caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @secundaria_caracteristica }
      else
        format.html { render :new }
        format.json { render json: @secundaria_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secundaria_caracteristicas/1
  # PATCH/PUT /secundaria_caracteristicas/1.json
  def update
    respond_to do |format|
      if @secundaria_caracteristica.update(secundaria_caracteristica_params)
        format.html { redirect_to @secundaria_caracteristica, notice: 'Secundaria caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @secundaria_caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @secundaria_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secundaria_caracteristicas/1
  # DELETE /secundaria_caracteristicas/1.json
  def destroy
    @secundaria_caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to secundaria_caracteristicas_url, notice: 'Secundaria caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secundaria_caracteristica
      @secundaria_caracteristica = SecundariaCaracteristica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secundaria_caracteristica_params
      params.require(:secundaria_caracteristica).permit(:nome)
    end
end
