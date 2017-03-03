class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]
    def index
        @products = Product.order("updated_at DESC")
        if params[:category].present?
          @products = @products.where(:category => params[:category])
        end
    end

    def show
        @product = Product.find(params[:id])
        @photos = @product.photos.all
    end

    def add_to_cart
        @product = Product.find(params[:id])

        if !current_cart.products.include?(@product)
            current_cart.add_product_to_cart(@product)
            flash[:notice] = "#{@product.title}成功加入购物车"
        else
            flash[:warning] = '购物车内已存在该商品'
        end

        redirect_to :back
    end

    def search
        @products = Product.ransack(title_or_description_cont: @q).result(distinct: true)
        if params[:s].present?
          @products = @products.where("title LIKE '%#{params[:s][:content]}%' or description LIKE
          '%#{params[:s][:content]}%'")
          if params[:s][:lowprice].present?
            @products = @products.where("price>=?", params[:s][:lowprice])
          end
          if params[:s][:lowprice].present?
            @products = @products.where("price<=?", params[:s][:highprice])
          end
          if params[:s][:category].present?
            @products = @products.where("category = ?", params[:s][:category])
          end
          if params[:s][:carbolevel].present?
            @products = @products.where("carbolevel = ?", params[:s][:carbolevel])
          end
        end
    end

    protected

    def validate_search_key
      @q = params[:query_string].gsub(/\|\'|\/|\?/, "") if params[:query_string].present?
    end
end
