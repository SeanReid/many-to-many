class SomethingController < ApplicationController
  def index
    @cities = City.all
  end
end
