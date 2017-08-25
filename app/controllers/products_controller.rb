class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:surprise]
  before_action :validate_search_key, only: [:search]
    def index
        @products = Product.order("updated_at DESC")
        if params[:category].present?
          @products = @products.where(:category => params[:category])
        end
        expires_in 3.months, :public => true
    end

    def show
        @product = Product.find(params[:id])

          @product.increment

        @photos = @product.photos.all
        if params[:is_surprise].present?
          @is_surprise = params[:is_surprise].to_s
        end
    end

    def add_to_cart
        @product = Product.find(params[:id])

        if !current_cart.products.include?(@product)
            current_cart.add_product_to_cart(@product)
            flash[:notice] = "#{@product.title}成功加入购物车"
        else
            flash[:warning] = '购物车内已存在该商品'
        end

        redirect_back(fallback_location: root_url)
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

    def surprise
      if !session.include?(:user_info) or DateTime.now.to_date != session[:user_info][1].to_date
        @product = Product.order('RANDOM()').first
        session.delete("user_info")
        session[:user_info] = [current_user.id, DateTime.now.to_date, @product.id, 0.8]
        redirect_to action: "show", id: @product.id, is_surprise: true
      else
        redirect_to action: "show", id: session[:user_info][2], is_surprise: true
        flash[:notice] = '欢迎来到您的惊喜～ 惊喜每天不同哦～～'
      end

      # @product = Product.order('RANDOM()').first
      # session.delete("user_info")
      # session[:user_info] = [current_user.id, DateTime.now.to_date, @product.id, 0.8]
      # redirect_to action: "show", id: @product.id, is_surprise: true
    end

    protected

    def validate_search_key
      @q = params[:query_string].gsub(/\|\'|\/|\?/, "") if params[:query_string].present?
    end
end
