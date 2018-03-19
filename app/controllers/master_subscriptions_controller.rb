class MasterSubscriptionsController < ApplicationController
  before_action :set_master_subscription, only: [:show, :edit, :update, :destroy]

  # GET /master_subscriptions
  # GET /master_subscriptions.json
  def index
    @master_subscriptions = MasterSubscription.all
  end

  # GET /master_subscriptions/1
  # GET /master_subscriptions/1.json
  def show
  end

  # GET /master_subscriptions/new
  def new
    @master_subscription = MasterSubscription.new
  end

  # GET /master_subscriptions/1/edit
  def edit
  end

  # POST /master_subscriptions
  # POST /master_subscriptions.json
  def create
    @master_subscription = MasterSubscription.new(master_subscription_params)

    respond_to do |format|
      if @master_subscription.save
        format.html { redirect_to @master_subscription, notice: 'Master subscription was successfully created.' }
        format.json { render :show, status: :created, location: @master_subscription }
      else
        format.html { render :new }
        format.json { render json: @master_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_subscriptions/1
  # PATCH/PUT /master_subscriptions/1.json
  def update
    respond_to do |format|
      if @master_subscription.update(master_subscription_params)
        format.html { redirect_to @master_subscription, notice: 'Master subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_subscription }
      else
        format.html { render :edit }
        format.json { render json: @master_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_subscriptions/1
  # DELETE /master_subscriptions/1.json
  def destroy
    @master_subscription.destroy
    respond_to do |format|
      format.html { redirect_to master_subscriptions_url, notice: 'Master subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_subscription
      @master_subscription = MasterSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_subscription_params
      params.fetch(:master_subscription, {})
    end
end
