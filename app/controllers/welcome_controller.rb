class WelcomeController < ApplicationController
  def index
      @products = Product.order("id DESC")
      @recomments = Product.where(:is_recommend => true).first(8)
      @nuts = Product.where(:category => "nut").first(4)
      @berries = Product.where(:category => "berry").first(4)
      @freshfood = Product.where(:category => "freshfood").first(4)
      @chocolate = Product.where(:category => "chocolate").first(4)
      expires_in 3.months, :public => true
  end

  def show
    render "welcome/about"
  end

  def about
  end

end
