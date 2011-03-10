class HomepageController < ApplicationController

  def show
    @thing = Thing.random_order.first
  end
  
end
