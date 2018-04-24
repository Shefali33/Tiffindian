class OrderController < ApplicationController
	  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

def create
    @order = Order.new(order_params)
       respond_to do |format|
      if @order.save
        format.html { redirect_to users_order_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order)permit(:user_id, :supplier_id,:ordered_date,:delivery_date,:delivery_time,:quantity,:price,:rating,:menu_id,:master_slot_id,:master_order_status_id,:master_order_type_id)
    end
end
