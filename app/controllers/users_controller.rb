class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
      @meals = MasterMeal.all
      respond_to do |format|
      format.html { render :layout => 'home' }
       @menus = Menu.all
       @category = MasterCategory.all


    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
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
   
  end
  def meals
  if params[:meal_id] && params[:category_id]
      @users = Menu.where(master_meal_id: params[:meal_id], master_category_id: params[:category_id]).user_id.uniq
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

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
     params.require(:user).permit(:name, :email, :password, :password_confirmation, :master_role_id, :menus_attributes => [:master_meal_id, :master_category_id, :master_day_id, :price, :menu])
    end
end
