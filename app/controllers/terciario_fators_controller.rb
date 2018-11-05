class TerciarioFatorsController < ApplicationController
  before_action :set_terciario_fator, only: [:show, :edit, :update, :destroy]

  # GET /terciario_fators
  # GET /terciario_fators.json
  def index
    @terciario_fators = TerciarioFator.all
  end

  # GET /terciario_fators/1
  # GET /terciario_fators/1.json
  def show
  end

  # GET /terciario_fators/new
  def new
    @terciario_fator = TerciarioFator.new
  end

  # GET /terciario_fators/1/edit
  def edit
  end

  # POST /terciario_fators
  # POST /terciario_fators.json
  def create
    @terciario_fator = TerciarioFator.new(terciario_fator_params)

    respond_to do |format|
      if @terciario_fator.save
        format.html { redirect_to @terciario_fator, notice: 'Terciario fator was successfully created.' }
        format.json { render :show, status: :created, location: @terciario_fator }
      else
        format.html { render :new }
        format.json { render json: @terciario_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terciario_fators/1
  # PATCH/PUT /terciario_fators/1.json
  def update
    respond_to do |format|
      if @terciario_fator.update(terciario_fator_params)
        format.html { redirect_to @terciario_fator, notice: 'Terciario fator was successfully updated.' }
        format.json { render :show, status: :ok, location: @terciario_fator }
      else
        format.html { render :edit }
        format.json { render json: @terciario_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terciario_fators/1
  # DELETE /terciario_fators/1.json
  def destroy
    @terciario_fator.destroy
    respond_to do |format|
      format.html { redirect_to terciario_fators_url, notice: 'Terciario fator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terciario_fator
      @terciario_fator = TerciarioFator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terciario_fator_params
      params.require(:terciario_fator).permit(:nome)
    end
end
