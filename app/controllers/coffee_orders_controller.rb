class CoffeeOrdersController < ApplicationController
    def index 
        @coffee_orders = CoffeeOrder.all
    end 
    
    def new
        @coffee_order = CoffeeOrder.new
        @user = @coffee_order.build_user
    end

    def create
        @coffee_order = CoffeeOrder.new(coffee_order_params)
        if @coffee_order.save
            redirect_to coffee_order_path(@coffee_order)
        else 
            render :new
        end 
    end 

    def show 
        @coffee_order = CoffeeOrder.find_by_id(params[:id])
    end 

    def edit 
        @coffee_order = CoffeeOrder.find_by_id(params[:id])
    end 

    def update 
        @coffee_order = CoffeeOrder.find_by_id(params[:id])
        if @coffee_order.update(coffee_order_params)
            redirect_to coffee_order_path(@coffee_order)
        else 
            render :edit
        end 
    end 

    def destroy 
        @coffee_order = CoffeeOrder.find_by_id(params[:id])
        @coffee_order.destroy 
        redirect_to coffee_orders_path
    end 

private 

    def coffee_order_params
        params.require(:coffee_order).permit(:title, :price, :size, :user_id, user_attributes: [:name])
    end 
end
