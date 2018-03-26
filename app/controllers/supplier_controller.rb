class SupplierController < ApplicationController
  before_action :set_supllier, only: [:show, :edit, :update, :destroy]

  # GET /suplliers
  # GET /suplliers.json
  def index
    @suplliers = Supllier.all
  end

  # GET /suplliers/1
  # GET /suplliers/1.json
  def show
  end

  # GET /suplliers/new
  def new
    @supllier = Supllier.new
  end

  # GET /suplliers/1/edit
  def edit
  end

  # POST /suplliers
  # POST /suplliers.json
  def create
    @supllier = Supllier.new(supllier_params)

    respond_to do |format|
      if @supllier.save
        format.html { redirect_to @supllier, notice: 'Supllier was successfully created.' }
        format.json { render :show, status: :created, location: @supllier }
      else
        format.html { render :new }
        format.json { render json: @supllier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suplliers/1
  # PATCH/PUT /suplliers/1.json
  def update
    respond_to do |format|
      if @supllier.update(supllier_params)
        format.html { redirect_to @supllier, notice: 'Supllier was successfully updated.' }
        format.json { render :show, status: :ok, location: @supllier }
      else
        format.html { render :edit }
        format.json { render json: @supllier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suplliers/1
  # DELETE /suplliers/1.json
  def destroy
    @supllier.destroy
    respond_to do |format|
      format.html { redirect_to suplliers_url, notice: 'Supllier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supllier
      @supllier = Supllier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supllier_params
      params.fetch(:supllier, {})
    end
end
