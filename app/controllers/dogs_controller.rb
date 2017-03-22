class DogsController < ApplicationController
  def index
    @search = Dog.search(params[:q])
    @search.sorts = ['id asc'] if @search.sorts.empty?
    @dogs = @search.result.includes(:owner, :breed, :visits).page(params[:page]).per(10)
  end
end
