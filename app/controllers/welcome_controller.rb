class WelcomeController < ApplicationController
  def index
      @products = Product.order("updated_at DESC")
  end

  def show
    render "welcome/about"
  end
end
