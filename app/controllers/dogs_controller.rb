class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    @dog.save
    redirect_to dog_path(@dog)
  end

  def edit
    @dog = Dog.find(params[:id])
    redirect_to dog_path(@dog)
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(name: params[:dog][:name], breed: params[:dog][:breed], age: params[:dog][:age])
    redirect_to dog_path(@dog)
  end

  private

  def dog_params
    params.require(:dog).permit(:name,:breed,:age)
  end
end
