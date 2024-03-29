module Api 
    class ProductsController < ApplicationController
        def index
            products = Product.all

            render json: ProductSerializer.new(products).serialized_json
        end

        def show 
            product = Product.find_by(slug: params[:slug])

            render json: ProductSerializer.new(product).serialized_json
        end

        def create
            product = Product.new(product_params)

            if product.save
                render json: ProductSerializer.new(product).serialized_json
            else
                render json: {error: product.errors.messages}, status: 422
            end
        end

        def update
            product = Product.find_by(slug: params[:slug])

            if product.update(product_params)
                render json: ProductSerializer.new(product).serialized_json
            else
                render json: { error: product.errors.messages }, status: 422
            end
        end

        def destroy
            product = Product.find_by(slug: params[:slug])

            if product.destroy
                head :no_content
            else
                render json: { error: product.errors.messages }, status: 422
            end
        end

        private

        def product_params
            params.require(:product).permit(:name, :total)
        end
    end
end