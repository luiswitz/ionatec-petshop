class DogsController < ApplicationController
  def index
    @search = Dog.search(params[:q])
    @dogs = @search.result.includes(:owner, :breed).page(params[:page]).per(10)
  end
end
