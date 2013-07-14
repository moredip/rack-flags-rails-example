class ProductsController < ApplicationController
  def show
    @show_coffees = features.on?(:coffees)
    @show_sandwiches = features.on?(:sandwiches)
  end

  def donuts
  end

  def coffees
  end

  def sandwiches
  end

  private 
  def features
    RackFlags.for_env(env)
  end
end
