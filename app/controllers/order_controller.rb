class OrderController < ApplicationController
	  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
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
