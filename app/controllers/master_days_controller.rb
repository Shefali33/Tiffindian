class MasterDaysController < ApplicationController
  before_action :set_master_day, only: [:show, :edit, :update, :destroy]

  # GET /master_days
  # GET /master_days.json
  def index
    @master_days = MasterDay.all
  end

  # GET /master_days/1
  # GET /master_days/1.json
  def show
  end

  # GET /master_days/new
  def new
    @master_day = MasterDay.new
  end

  # GET /master_days/1/edit
  def edit
  end

  # POST /master_days
  # POST /master_days.json
  def create
    @master_day = MasterDay.new(master_day_params)

    respond_to do |format|
      if @master_day.save
        format.html { redirect_to @master_day, notice: 'Master day was successfully created.' }
        format.json { render :show, status: :created, location: @master_day }
      else
        format.html { render :new }
        format.json { render json: @master_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_days/1
  # PATCH/PUT /master_days/1.json
  def update
    respond_to do |format|
      if @master_day.update(master_day_params)
        format.html { redirect_to @master_day, notice: 'Master day was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_day }
      else
        format.html { render :edit }
        format.json { render json: @master_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_days/1
  # DELETE /master_days/1.json
  def destroy
    @master_day.destroy
    respond_to do |format|
      format.html { redirect_to master_days_url, notice: 'Master day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_day
      @master_day = MasterDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_day_params
      params.fetch(:master_day, {})
    end
end
