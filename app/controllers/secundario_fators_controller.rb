class SecundarioFatorsController < ApplicationController
  before_action :set_secundario_fator, only: [:show, :edit, :update, :destroy]

  # GET /secundario_fators
  # GET /secundario_fators.json
  def index
    @secundario_fators = SecundarioFator.all
  end

  # GET /secundario_fators/1
  # GET /secundario_fators/1.json
  def show
  end

  # GET /secundario_fators/new
  def new
    @secundario_fator = SecundarioFator.new
  end

  # GET /secundario_fators/1/edit
  def edit
  end

  # POST /secundario_fators
  # POST /secundario_fators.json
  def create
    @secundario_fator = SecundarioFator.new(secundario_fator_params)

    respond_to do |format|
      if @secundario_fator.save
        format.html { redirect_to @secundario_fator, notice: 'Secundario fator was successfully created.' }
        format.json { render :show, status: :created, location: @secundario_fator }
      else
        format.html { render :new }
        format.json { render json: @secundario_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secundario_fators/1
  # PATCH/PUT /secundario_fators/1.json
  def update
    respond_to do |format|
      if @secundario_fator.update(secundario_fator_params)
        format.html { redirect_to @secundario_fator, notice: 'Secundario fator was successfully updated.' }
        format.json { render :show, status: :ok, location: @secundario_fator }
      else
        format.html { render :edit }
        format.json { render json: @secundario_fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secundario_fators/1
  # DELETE /secundario_fators/1.json
  def destroy
    @secundario_fator.destroy
    respond_to do |format|
      format.html { redirect_to secundario_fators_url, notice: 'Secundario fator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secundario_fator
      @secundario_fator = SecundarioFator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secundario_fator_params
      params.require(:secundario_fator).permit(:nome)
    end
end
