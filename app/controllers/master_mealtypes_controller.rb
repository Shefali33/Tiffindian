class MasterMealtypesController < ApplicationController
  before_action :set_master_mealtype, only: [:show, :edit, :update, :destroy]

  # GET /master_mealtypes
  # GET /master_mealtypes.json
  def index
    @master_mealtypes = MasterMealtype.all
  end

  # GET /master_mealtypes/1
  # GET /master_mealtypes/1.json
  def show
  end

  # GET /master_mealtypes/new
  def new
    @master_mealtype = MasterMealtype.new
  end

  # GET /master_mealtypes/1/edit
  def edit
  end

  # POST /master_mealtypes
  # POST /master_mealtypes.json
  def create
    @master_mealtype = MasterMealtype.new(master_mealtype_params)

    respond_to do |format|
      if @master_mealtype.save
        format.html { redirect_to @master_mealtype, notice: 'Master mealtype was successfully created.' }
        format.json { render :show, status: :created, location: @master_mealtype }
      else
        format.html { render :new }
        format.json { render json: @master_mealtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_mealtypes/1
  # PATCH/PUT /master_mealtypes/1.json
  def update
    respond_to do |format|
      if @master_mealtype.update(master_mealtype_params)
        format.html { redirect_to @master_mealtype, notice: 'Master mealtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_mealtype }
      else
        format.html { render :edit }
        format.json { render json: @master_mealtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_mealtypes/1
  # DELETE /master_mealtypes/1.json
  def destroy
    @master_mealtype.destroy
    respond_to do |format|
      format.html { redirect_to master_mealtypes_url, notice: 'Master mealtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_mealtype
      @master_mealtype = MasterMealtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_mealtype_params
      params.fetch(:master_mealtype, {})
    end
end
