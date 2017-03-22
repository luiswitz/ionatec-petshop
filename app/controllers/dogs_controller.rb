class DogsController < ApplicationController
  def index
    @search = Dog.search(params[:q])
    @dogs = @search.result.includes(:owner, :breed)
  end
end
