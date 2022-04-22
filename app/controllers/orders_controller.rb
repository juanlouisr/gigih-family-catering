class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.order_details.build
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)
    @order.total_price = @order.current_price

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_url, notice: "#{@order.customer.name}'s order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update  
    order_params[:total_price] = @order.current_price
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to orders_url, notice: "#{@order.customer.name}'s order was successfully updated, price was changed to #{@order.total_price}" }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def order_params
    @order_params ||= params.require(:order).permit(
      :customer_id,
      :total_price,
      # order_details_attributes: %i[id order_id menu_id quantity]
      order_details_attributes: OrderDetail.attribute_names.map(&:to_sym).push(:_destroy)
    )
  end
end
