class WelcomeController < ApplicationController
  def index
      @products = Product.order("id DESC")
      expires_in 3.months, :public => true
  end

  def show
    render "welcome/about"
  end

  def about
  end

end
