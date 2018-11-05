class PrincipalCaracteristicasController < ApplicationController
  before_action :set_principal_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /principal_caracteristicas
  # GET /principal_caracteristicas.json
  def index
    @principal_caracteristicas = PrincipalCaracteristica.all
  end

  # GET /principal_caracteristicas/1
  # GET /principal_caracteristicas/1.json
  def show
  end

  # GET /principal_caracteristicas/new
  def new
    @principal_caracteristica = PrincipalCaracteristica.new
  end

  # GET /principal_caracteristicas/1/edit
  def edit
  end

  # POST /principal_caracteristicas
  # POST /principal_caracteristicas.json
  def create
    @principal_caracteristica = PrincipalCaracteristica.new(principal_caracteristica_params)

    respond_to do |format|
      if @principal_caracteristica.save
        format.html { redirect_to @principal_caracteristica, notice: 'Principal caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @principal_caracteristica }
      else
        format.html { render :new }
        format.json { render json: @principal_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principal_caracteristicas/1
  # PATCH/PUT /principal_caracteristicas/1.json
  def update
    respond_to do |format|
      if @principal_caracteristica.update(principal_caracteristica_params)
        format.html { redirect_to @principal_caracteristica, notice: 'Principal caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @principal_caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @principal_caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principal_caracteristicas/1
  # DELETE /principal_caracteristicas/1.json
  def destroy
    @principal_caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to principal_caracteristicas_url, notice: 'Principal caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal_caracteristica
      @principal_caracteristica = PrincipalCaracteristica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principal_caracteristica_params
      params.require(:principal_caracteristica).permit(:nome)
    end
end
