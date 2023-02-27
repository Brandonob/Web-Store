module Api 
    class OrdersController < ApplicationController
        def index
            orders = Order.all

            render json: OrderSerializer.new(orders).serialized_json
        end

        def show 
            order = Order.find_by(slug: params[:slug])

            render json: OrderSerializer.new(order).serialized_json
        end

        def create
            order = Order.new(order_params)

            if order.save
                render json: OrderSerializer.new(order).serialized_json
            else
                render json: {error: order.errors.messages}, status: 422
            end
        end

        def update
            order = Order.find_by(slug: params[:slug])

            if order.update(order_params)
                render json: OrderSerializer.new(order).serialized_json
            else
                render json: { error: order.errors.messages }, status: 422
            end
        end

        def destroy
            order = Order.find_by(slug: params[:slug])

            if order.destroy
                head :no_content
            else
                render json: { error: order.errors.messages }, status: 422
            end
        end

        private

        def order_params
            params.require(:order).permit(:first_name, :last_name, :email, :phone_number, :address, :zip_code, :city, :state, :country,)
        end
    end
end