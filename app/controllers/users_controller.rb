 class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
        # @price = MasterSubscription.find(params[:user][:price])
    @users = User.all
    @meals = MasterMeal.all
    @disabled_meals = @meals
    @menus = Menu.all
    @category = MasterCategory.all
    @disabled_categories = @category
    respond_to do |format|
    format.html { render :layout => 'home' }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
     @users = User.all
     @users = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    # @master_role = MasterRole.find(params[:user][:master_role_id])
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    # @master_role = MasterRole.find(params[:user][:master_role_id])
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def menu_create
    @menu = current_user.update(user_params)
    debugger
      redirect_to root_path
  end
  def meals
  if params[:meal_id] && params[:category_id]
    @users = []
  Menu.where(master_meal_id: params[:meal_id], master_category_id: params[:category_id]).each do |menu|
    @users << menu.user
  end
  @users = @users.uniq
  elsif params[:meal_id]
         @users = MasterMeal.find(params[:meal_id]).users.uniq
  elsif params[:category_id]
      @users = MasterCategory.find(params[:category_id]).users.uniq  
      # == params[:meal_id])
      respond_to do |format|
      format.js

    end
  end
  end

def category
      @category = MasterCategory.all
      @disabled_categories = []

       respond_to do |format|
      format.js
    end
end

  def radiomeal
    @meals = MasterMeal.all
    d = params[:date]
    date = d.to_date 
    # byebug
    if date == Date.today
    time = Time.now.seconds_since_midnight

    # brks = Time.parse("07:00").seconds_since_midnight
    # brke = Time.parse("10:00").seconds_since_midnight
    # lnchs = Time.parse("11:00").seconds_since_midnight
    # lnche = Time.parse("15:00").seconds_since_midnight
    # dinrs = Time.parse("19:00").seconds_since_midnight
    # dinre = Time.parse("22:00").seconds_since_midnight
     if time.between?(MasterSlot.find(1).start_time.seconds_since_midnight,MasterSlot.find(1).end_time.seconds_since_midnight)
     # @meals = []
     # MasterMeal.find_all_by_id([2,3]).each do |meal| 
     # @meals << meal.all
    # end
      @disabled_meals = MasterMeal.where(id: 1)
     elsif time.between?(MasterSlot.find(2).start_time.seconds_since_midnight,MasterSlot.find(2).end_time.seconds_since_midnight)
    #    # flash[:notice] = "Post1111111 successfully created"
      @disabled_meals = MasterMeal.where(id: [1,2])
     elsif time.between?(MasterSlot.find(3).start_time.seconds_since_midnight,MasterSlot.find(3).end_time.seconds_since_midnight)
    #   # MasterMeal.where(master_meal_id: params[:meal_id])
    #debugger
     # @meals = []
     # MasterMeal.find_all_by_id([2,3]).each do |meal| 
     # @meals << meal.all
     # debugger
   # end
   @disabled_meals = MasterMeal.all
     end
    else
      @disabled_meals = []
    end
   respond_to do |format|
   format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
     params.require(:user).permit(:name, :email, :password, :image, :password_confirmation, :master_role_id, :menus_attributes => [:id, :master_meal_id, :master_category_id, :master_day_id, :price, :menu, :_destroy])
    end
end
