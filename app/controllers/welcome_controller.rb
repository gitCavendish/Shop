class WelcomeController < ApplicationController
  def index
      @products = Product.all
      # byebug
  end
end
