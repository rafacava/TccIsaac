class PrincipalFatorsController < ApplicationController
  before_action :set_principal_fator, only: [:show, :edit, :update, :destroy]

  # GET /principal_fators
  # GET /principal_fators.json
  def index
    @principal_fators = PrincipalFator.all
  end

  # GET /principal_fators/1
  # GET /principal_fators/1.json
  def show
  end

  # GET /principal_fators/new
  def new
    @principal_fator = PrincipalFator.new
  end

  # GET /principal_fators/1/edit
  def edit
  end

  # POST /principal_fators
  # POST /principal_fators.json
  def create
    @principal_fator = PrincipalFator.new(principal_fator_params)

    respond_to do |format|
      if @principal_fator.save
        format.html { redirect_to @principal_fator, notice: 'Principal fator was successfully created.' }
        format.json { render :show, status: :created, location: @principal_fator }
      else
        format.html { render :new }
        format.json { render json: @principal_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principal_fators/1
  # PATCH/PUT /principal_fators/1.json
  def update
    respond_to do |format|
      if @principal_fator.update(principal_fator_params)
        format.html { redirect_to @principal_fator, notice: 'Principal fator was successfully updated.' }
        format.json { render :show, status: :ok, location: @principal_fator }
      else
        format.html { render :edit }
        format.json { render json: @principal_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principal_fators/1
  # DELETE /principal_fators/1.json
  def destroy
    @principal_fator.destroy
    respond_to do |format|
      format.html { redirect_to principal_fators_url, notice: 'Principal fator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal_fator
      @principal_fator = PrincipalFator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principal_fator_params
      params.require(:principal_fator).permit(:nome)
    end
end
