class OrderController < ApplicationController
	  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end
end
